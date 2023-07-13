#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLE2902.h>
#include <WiFi.h>
#include <Arduino.h>
#include "ArduinoJson.h"
#include <HTTPClient.h>
#include <SPI.h>
#include <MFRC522.h>
#include <HX711.h>

#define DT_PIN 2
#define SCK_PIN 4

#define RST_PIN 5  
#define SS_PIN 26

#define DEVICE_NAME "Maruhakari" 

#define SERVICE_UUID           "4426c565-997d-4902-946f-4060916183db"  // サービスのUUID
#define CONNECT_INFO_CHARACTERISTIC_UUID "7a21cc0f-3845-4452-8ab6-86e035978d35"
#define CURRENT_NFC_AND_WEIGHT_CHARAXTERISTIC_UUID "fc170318-c6dd-4681-94c8-352aa763056e"

#define MTU_SIZE 500

#define API_ENDPOINT_URL "http://maruhakari-iot.panta.systems/api/v1/measurement-histories"

BLECharacteristic *connectionInfoCharacteristicTx;
BLECharacteristic *currentNfcAndWeightCharacteristicTx;

MFRC522 mfrc522(SS_PIN, RST_PIN);  // Create MFRC522 instance

HX711 scale;

bool  deviceConnected = false; 
bool connectingWifi = false;

long offset = 51015;
double gradient = 0.0004479036;
double baseWeight = 300.0;

char* nfcUid;  // ポインタを宣言



RTC_DATA_ATTR char wifiSsid[128]; 
RTC_DATA_ATTR char wifiPassword[128]; 
RTC_DATA_ATTR char secretToken[128];

RTC_DATA_ATTR int bootCount = 0; // RTCスローメモリに変数を確保
RTC_DATA_ATTR int sendFailCount = 0;

class ConnectionCallbacks: public BLEServerCallbacks {
    void onConnect(BLEServer* pServer) {
        deviceConnected = true;
        pServer->updatePeerMTU(pServer->getConnId(), 200);
        Serial.println("接続された");
    }
    void onDisconnect(BLEServer* pServer) {
        deviceConnected = false;
        Serial.println("接続解除された");
    }
};

// void onWifiConnectFailed() {
//   memset(wifiSsid, 0, sizeof(wifiSsid));
//   memset(wifiPassword, 0, sizeof(wifiPassword));
//   memset(secretToken, 0, sizeof(secretToken));
// }

void connectWifi(const char* ssid, const char* password) {
    if (connectingWifi) {
      return;
    }
    connectingWifi = true;
    
    WiFi.begin(ssid, password);
    Serial.print("Connecting to ");

    int delayCounter = 0;
    
    while (WiFi.status() != WL_CONNECTED && delayCounter < 100) {
        delay(500);
        delayCounter++;
        if (delayCounter % 5 == 0) {
          readSensorValueAndWriteToBle();
        }
        Serial.print(".");
    }
    if (delayCounter < 100) {
      Serial.println("接続成功");  
    } else {
      // onWifiConnectFailed();
    }
    

    connectingWifi = false;
}

void writeConnectionInfoToRtcData(const char* ssid, const char* password, const char* token) {
    strncpy(wifiSsid, ssid, sizeof(wifiSsid) - 1);
    wifiSsid[sizeof(wifiSsid) -1] = '\0';

    strncpy(wifiPassword, password, sizeof(wifiPassword) - 1);
    wifiPassword[sizeof(wifiPassword) - 1] = '\0';

    strncpy(secretToken, token, sizeof(secretToken) - 1);
    secretToken[sizeof(secretToken) - 1] = '\0';
}

class ConnectionInfoBleCallbacks: public BLECharacteristicCallbacks {
  void onRead(BLECharacteristic *pCharacteristic) {
    Serial.println("read");
//    pCharacteristic->setValue("Hello World!");
  }

  void onWrite(BLECharacteristic *pCharacteristic) {
    Serial.println("write");
    std::string value = pCharacteristic->getValue();
    DynamicJsonDocument doc(1024);
    deserializeJson(doc, value);

    const char* ssid = doc["s"];
    const char* password = doc["p"];
    const char* token = doc["t"];

    Serial.println(ssid);
    Serial.println(password);
    Serial.println(token);

    writeConnectionInfoToRtcData(ssid, password, token);
    connectWifi(ssid, password);
  }
};


void startBluetooth() {
  BLEDevice::init(DEVICE_NAME);
  BLEServer *pServer = BLEDevice::createServer();
  
  pServer->setCallbacks(new ConnectionCallbacks());
  BLEService *pService = pServer->createService(SERVICE_UUID);
  doPrepare(pService);
  pService->start();
  BLEAdvertising *pAdvertising = pServer->getAdvertising();
  pAdvertising->addServiceUUID(SERVICE_UUID);
  pAdvertising->start();
}

/**
 * 接続情報に何かしらの情報が代入されているかを確認する処理
 */
bool checkConnectionInfoAvailable() {
  return strlen(wifiSsid) != 0 && strlen(wifiPassword) != 0 && strlen(secretToken);
}

/**
 * 接続情報に何かしらの情報が代入されるまで待ち続ける処理
 */
void waitConnectionInfoAvailable() {
  int count = 0;
  while(!checkConnectionInfoAvailable()) {
    if (count % 10 == 0) {
      readSensorValueAndWriteToBle();
    }
    delay(100);
    count ++;
  }
}

void getSensorValueAndSendToServer() {
  // TODO: nfcからuidをchar*で取得する処理と歪みセンサーから重量を取得する処理を実装する
  loadNfcUid();
  float weight = getWeight();
  
  DynamicJsonDocument doc(1024);
  doc["nfc_uid"] = nfcUid;
  doc["weight"] = weight;
  doc["device_token"] = secretToken;

  char jsonString[400];

  String requestBody;
  serializeJson(doc, requestBody);
  Serial.println(requestBody);

  HTTPClient httpClient;
  httpClient.begin(API_ENDPOINT_URL);
  httpClient.addHeader("Content-Type", "application/json");
  
  int statusCode = httpClient.POST(requestBody);
  Serial.println(statusCode);
  if (statusCode >= 200 && statusCode <= 300) {
    sendFailCount ++;
  }
  httpClient.end();

  // メモリの解放
  delete[] nfcUid;
  
}

void readSensorValueAndWriteToBle() {
  loadNfcUid();
  float weight = getWeight();
  DynamicJsonDocument doc(1024);
  doc["nfc_uid"] = nfcUid;
  doc["weight"] = weight;
  
  char jsonString[400];
  serializeJson(doc, jsonString);
  currentNfcAndWeightCharacteristicTx->setValue(jsonString);
  currentNfcAndWeightCharacteristicTx->notify();

  // メモリの解放
  delete[] nfcUid;
  
}

void loadNfcUid() {
  char uid[] = "test-uid";
  nfcUid = uid;
}

float getWeight() {
  return 350.0;
}

void setup() {
  Serial.begin(115200);
  Serial.println("Start programm ...");
  // put your setup code here, to run once:

  scale.begin(DT_PIN, SCK_PIN);

  startBluetooth();
  if (!checkConnectionInfoAvailable()) {  
    Serial.println("Waiting to connect ...");
    waitConnectionInfoAvailable();
  }

  if (checkConnectionInfoAvailable()) {
    connectWifi(wifiSsid, wifiPassword);
  }

  if (WiFi.status() == WL_CONNECTED) {
    getSensorValueAndSendToServer(); 
  } else {
    sendFailCount ++;
  }
  
  bootCount++;

  esp_sleep_enable_timer_wakeup(1000000);
  esp_deep_sleep_start();
}

void loop() {
  // put your main code here, to run repeatedly:
  
  
}

void doPrepare(BLEService *pService) {
    connectionInfoCharacteristicTx = pService->createCharacteristic(
                      CONNECT_INFO_CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ | BLECharacteristic::PROPERTY_WRITE
                      );

    currentNfcAndWeightCharacteristicTx = pService->createCharacteristic(
                      CURRENT_NFC_AND_WEIGHT_CHARAXTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ   |
                      BLECharacteristic::PROPERTY_WRITE  |
                      BLECharacteristic::PROPERTY_NOTIFY |
                      BLECharacteristic::PROPERTY_INDICATE
                      );
    connectionInfoCharacteristicTx->setCallbacks(new ConnectionInfoBleCallbacks());
}
