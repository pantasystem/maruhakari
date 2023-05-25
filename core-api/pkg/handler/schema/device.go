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

type CreateDeviceRequest struct {
	MacAddress string  `json:"mac_address"`
	Salt       string  `json:"salt"`
	Label      *string `json:"label"`
}

type DeviceController interface {
	CreateDevice(c *gin.Context)
	GetOwnDevices(c *gin.Context)
}
