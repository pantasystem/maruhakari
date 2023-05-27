package schema

import "time"

type RecordHistoryRequest struct {
	DeviceToken string  `json:"device_token"`
	NfcUid      string  `json:"nfc_uid"`
	Weight      float32 `json:"weight"`
}

type MeasurementHistory struct {
	Id        int64     `json:"id"`
	FoodId    string    `json:"food_id"`
	Weight    float32   `json:"weight"`
	CreatedAt time.Time `json:"created_at"`
}
