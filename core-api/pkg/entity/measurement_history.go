package entity

import (
	"time"

	"github.com/google/uuid"
	"github.com/oklog/ulid/v2"
	"gorm.io/gorm"
)

type MeasurementHistory struct {
	ID            ulid.ULID `gorm:"primaryKey"`
	FoodID        uuid.UUID
	Food          *Food `gorm:"foreignKey:FoodID"`
	RawWeightGram float32
	CreatedAt     time.Time
}

func (r *MeasurementHistory) BeforeCreate(tx *gorm.DB) (err error) {
	ulid := ulid.Make()
	r.ID = ulid
	return nil
}
