package entity

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type FcmToken struct {
	ID        uuid.UUID `gorm:"primaryKey"`
	AccountID uuid.UUID
	Account   *Account `gorm:"foreignKey:AccountID"`
	Token     string   `gorm:"uniqueIndex"`
}

func (r *FcmToken) BeforeCreate(tx *gorm.DB) (err error) {
	uuid, err := uuid.NewRandom()
	if err != nil {
		return err
	}
	r.ID = uuid
	return nil
}
