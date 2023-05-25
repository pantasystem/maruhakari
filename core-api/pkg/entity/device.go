package entity

import (
	"time"

	"github.com/google/uuid"
)

type Device struct {
	ID         uuid.UUID `gorm:"primaryKey"`
	Token      string    `gorm:"uniqueIndex"`
	AccountID  uuid.UUID `gorm:"uniqueIndex:idx_mac_address_and_account_id"`
	Account    *Account  `gorm:"foreignKey:AccountID"`
	MacAddress string    `gorm:"uniqueIndex:idx_mac_address_and_account_id"`
	Label      *string
	CreatedAt  time.Time
	UpdatedAt  time.Time
}
