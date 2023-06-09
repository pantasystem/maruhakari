package endpoint

import (
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"fmt"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
)

type FoodChartHandler struct {
	Module module.Module
}

func (r *FoodChartHandler) GetFoodChart(c *gin.Context) {

	strFoodId := c.Param("foodId")
	foodId, err := uuid.Parse(strFoodId)
	if err != nil {
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}

	stBegin := c.Query("begin_at")
	stEnd := c.Query("end_at")
	endAt, err := time.Parse(time.RFC3339, stEnd)
	if err != nil {
		fmt.Printf("parse time error: %v\n", err)
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	beginAt, err := time.Parse(time.RFC3339, stBegin)
	if err != nil {
		fmt.Printf("parse time error: %v\n", err)
		c.JSON(400, gin.H{"error": err.Error()})
		return
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindByRange(c, foodId, beginAt, endAt)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	food, err := r.Module.RepositoryModule().FoodRepository().FindByID(c, foodId)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}
	charts := make([]*schema.FoodChartRecord, 0)

	maxRawWeightGram := float32(0)
	for _, h := range histories {
		if h.RawWeightGram > maxRawWeightGram {
			maxRawWeightGram = h.RawWeightGram
		}
	}
	for _, h := range histories {
		// diff := float32(h.CreatedAt.UnixMilli() - beginAt.UnixMilli())
		charts = append(charts, &schema.FoodChartRecord{
			X: float32(h.CreatedAt.UnixMilli()),
			Y: float32(h.RawWeightGram - food.ContainerWeightGram),
		})
	}
	c.JSON(200, schema.FoodChart{
		Records: charts,
		BeginAt: beginAt,
		EndAt:   endAt,
	})
}
