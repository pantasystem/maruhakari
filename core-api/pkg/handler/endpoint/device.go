package endpoint

import (
	"core-api/pkg/entity"
	"core-api/pkg/handler/middleware"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"errors"
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type DeviceHandler struct {
	Module module.Module
}

func (r *DeviceHandler) GetOwnDevices(c *gin.Context) {
	aId, err := uuid.Parse(c.GetString("accountId"))
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	devices, err := r.Module.RepositoryModule().DeviceRepository().FindByAccountID(c, aId)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	schemaDevices := make([]*schema.Device, len(devices))
	for i, device := range devices {
		schemaDevices[i] = &schema.Device{
			Id:         device.ID.String(),
			MacAddress: device.MacAddress,
			Label:      device.Label,
			Token:      device.Token,
			CreatedAt:  device.CreatedAt,
			UpdatedAt:  device.UpdatedAt,
		}
	}
	c.JSON(200, schemaDevices)
}

func (r *DeviceHandler) SaveDevice(c *gin.Context) {
	var req schema.SaveDeviceRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		fmt.Printf("parse account id error: %v\n", err)
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	dv, err := r.Module.RepositoryModule().DeviceRepository().FindByAccountIDAndMacAddress(c, aId, req.MacAddress)
	if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
		fmt.Printf("find device error: %v\n", err)
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	if dv == nil {
		dv, err = r.Module.RepositoryModule().DeviceRepository().Create(c, &entity.Device{
			AccountID:  aId,
			MacAddress: req.MacAddress,
			Label:      req.Label,
			Token:      req.Token,
		})
		if err != nil {
			fmt.Printf("create device error: %v\n", err)
			c.JSON(500, gin.H{"error": err.Error()})
			return
		}
	} else {
		if dv.AccountID != aId {
			c.JSON(403, gin.H{"error": "forbidden"})
			return
		}
		dv.Label = req.Label
		dv.Token = req.Token
		dv, err = r.Module.RepositoryModule().DeviceRepository().Update(c, dv)
		if err != nil {
			fmt.Printf("update device error: %v\n", err)
			c.JSON(500, gin.H{"error": err.Error()})
			return
		}
	}
	c.JSON(200, schema.Device{
		Id:         dv.ID.String(),
		MacAddress: dv.MacAddress,
		Label:      dv.Label,
		Token:      dv.Token,
		CreatedAt:  dv.CreatedAt,
		UpdatedAt:  dv.UpdatedAt,
	})
}
