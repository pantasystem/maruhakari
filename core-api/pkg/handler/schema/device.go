package schema

import (
	"time"

	"github.com/gin-gonic/gin"
)

type Device struct {
	Id         string    `json:"id"`
	MacAddress string    `json:"mac_address"`
	Token      string    `json:"token"`
	AccountId  string    `json:"account_id"`
	Label      *string   `json:"label"`
	CreatedAt  time.Time `json:"created_at"`
	UpdatedAt  time.Time `json:"updated_at"`
}

type SaveDeviceRequest struct {
	MacAddress string  `json:"mac_address"`
	Token      string  `json:"token"`
	Label      *string `json:"label"`
}

type DeviceController interface {
	SaveDevice(c *gin.Context)
	GetOwnDevices(c *gin.Context)
}
