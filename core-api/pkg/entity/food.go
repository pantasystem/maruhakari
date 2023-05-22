package entity

import (
	"time"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type Food struct {
	ID                     uuid.UUID `gorm:"primaryKey"`
	ContainerWeightGram    float32
	ContainerMaxWeightGram float32
	GramPerMilliliter      *float32
	Name                   string
	AccountID              uuid.UUID `gorm:"uniqueIndex:idx_nfc_and_account_id"`
	Account                *Account  `gorm:"foreignKey:AccountID"`
	NfcUid                 *string   `gorm:"uniqueIndex:idx_nfc_and_account_id"`
	CreatedAt              time.Time
	UpdatedAt              time.Time
}

func (r *Food) BeforeCreate(tx *gorm.DB) (err error) {
	uuid, err := uuid.NewRandom()
	if err != nil {
		return err
	}
	r.ID = uuid
	return nil
}
