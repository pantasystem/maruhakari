package schema

type MeasurementHistory struct {
	Id        string  `json:"id"`
	FoodId    string  `json:"food_id"`
	Weight    float32 `json:"weight"`
	CreatedAt string  `json:"created_at"`
}

type RecordHistoryRequest struct {
	DeviceToken string  `json:"device_token"`
	NfcUid      string  `json:"nfc_uid"`
	Weight      float32 `json:"weight"`
}
