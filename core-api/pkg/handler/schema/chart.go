package schema

import (
	"time"

	"github.com/gin-gonic/gin"
)

type FoodChart struct {
	Records []*FoodChartRecord `json:"records"`
	BeginAt time.Time          `json:"begin_at"`
	EndAt   time.Time          `json:"end_at"`
}

// X値はBeginAtとEndAtを元に相対的に求める
// Y値はBeginAtとEndAtの中で最大値を元に相対的に求める
type FoodChartRecord struct {
	X float32 `json:"x"`
	Y float32 `json:"y"`
}

type FoodChartController interface {
	GetFoodChart(c *gin.Context)
}
