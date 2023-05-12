package entity

import (
	"time"

	"github.com/google/uuid"
)

type Device struct {
	ID        uuid.UUID `gorm:"primaryKey"`
	Token     string
	AccountID uuid.UUID
	Account   *Account `gorm:"foreignKey:AccountID"`
	CreatedAt time.Time
	UpdatedAt time.Time
}
