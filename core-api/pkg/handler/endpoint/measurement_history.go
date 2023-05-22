package endpoint

import (
	"core-api/pkg/entity"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"net/http"

	"github.com/gin-gonic/gin"
)

type MeasurementHistoryHandler struct {
	Module module.Module
}

func (r *MeasurementHistoryHandler) RecordHistory(c *gin.Context) {
	var req schema.RecordHistoryRequest

	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}

	dv, err := r.Module.RepositoryModule().DeviceRepository().FindByToken(c, req.DeviceToken)
	if err != nil {
		c.JSON(404, gin.H{"error": err.Error()})
		return
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByNfcUid(c, req.NfcUid)
	if err != nil {
		c.JSON(404, gin.H{"error": err.Error()})
		return
	}

	if dv.AccountID != f.AccountID {
		c.JSON(403, gin.H{"error": "device and food does not belong to the same account"})
		return
	}

	mhe, err := r.Module.RepositoryModule().MeasurementHistoryRepository().Create(c, &entity.MeasurementHistory{
		FoodID:        f.ID,
		RawWeightGram: req.Weight,
	})
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, schema.MeasurementHistory{
		Id:        mhe.ID,
		FoodId:    f.ID.String(),
		Weight:    mhe.RawWeightGram,
		CreatedAt: mhe.CreatedAt,
	})
}