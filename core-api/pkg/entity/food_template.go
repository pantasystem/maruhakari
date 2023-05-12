package entity

import (
	"time"

	"github.com/google/uuid"
)

type FoodTemplate struct {
	ID            uuid.UUID `gorm:"primaryKey"`
	Name          string
	GramPerMiller *float32
	CreatedAt     time.Time
	UpdatedAt     time.Time
}
