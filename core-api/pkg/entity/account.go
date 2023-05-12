package entity

import (
	"time"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type Account struct {
	ID                uuid.UUID `gorm:"primaryKey"`
	Username          string
	EncryptedPassword string
	Token             uuid.UUID `gorm:"uniqueIndex"`
	Devices           *[]Device `gorm:"foreignKey:AccountID"`
	Foods             *[]Food   `gorm:"foreignKey:AccountID"`
	CreatedAt         time.Time
	UpdatedAt         time.Time
}

func (r *Account) BeforeCreate(tx *gorm.DB) (err error) {
	uuid, err := uuid.NewRandom()
	if err != nil {
		return err
	}
	r.ID = uuid
	r.Token = uuid
	return nil
}
