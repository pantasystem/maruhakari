package entity

import (
	"time"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type MeasurementHistory struct {
	ID            uuid.UUID `gorm:"primaryKey"`
	FoodID        uuid.UUID
	Food          *Food `gorm:"foreignKey:FoodID"`
	RawWeightGram float32
	CreatedAt     time.Time
}

func (r *MeasurementHistory) BeforeCreate(tx *gorm.DB) (err error) {
	uuid, err := uuid.NewRandom()
	if err != nil {
		return err
	}
	r.ID = uuid
	return nil
}
