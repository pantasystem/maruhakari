package entity

import (
	"time"

	"github.com/google/uuid"
)

type MeasurementHistory struct {
	ID            int64 `gorm:"primaryKey"`
	FoodID        uuid.UUID
	Food          *Food `gorm:"foreignKey:FoodID"`
	RawWeightGram float32
	CreatedAt     time.Time
}
