package entity

import (
	"time"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type FoodTemplate struct {
	ID            uuid.UUID `gorm:"primaryKey"`
	Name          string
	GramPerMiller *float32
	CreatedAt     time.Time
	UpdatedAt     time.Time
}

func (r *FoodTemplate) BeforeCreate(tx *gorm.DB) (err error) {
	uuid, err := uuid.NewRandom()
	if err != nil {
		return err
	}
	r.ID = uuid
	return nil
}
