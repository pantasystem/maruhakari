package schema

import (
	"time"

	"github.com/gin-gonic/gin"
)

type MeasurementHistory struct {
	Id        int64     `json:"id"`
	FoodId    string    `json:"food_id"`
	Weight    float32   `json:"weight"`
	DeviceId  *string   `json:"device_id"`
	Device    *Device   `json:"device"`
	Food      *Food     `json:"food"`
	CreatedAt time.Time `json:"created_at"`
}

type RecordHistoryRequest struct {
	DeviceToken string  `json:"device_token"`
	NfcUid      string  `json:"nfc_uid"`
	Weight      float32 `json:"weight"`
}

type CreateMeasurementHistoryRequest struct {
	Weight   float32    `json:"weight"`
	RecordAt *time.Time `json:"record_at"`
}

type CreateMeasurementHistoryFromAppRequest struct {
	Weight   float32 `json:"weight"`
	NfcUid   string  `json:"nfc_uid"`
	DeviceId *string `json:"device_id"`
}

type MeasurementHistoryController interface {
	RecordHistory(c *gin.Context)
	FindHistory(c *gin.Context)
	CreateHistory(c *gin.Context)
	CreateHistoryFromApp(c *gin.Context)
}
