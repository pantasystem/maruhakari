package entity

import (
	"time"

	"github.com/google/uuid"
	"golang.org/x/crypto/bcrypt"
	"gorm.io/gorm"
)

type Account struct {
	ID                uuid.UUID `gorm:"primaryKey"`
	Username          string    `gorm:"uniqueIndex"`
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

func (r *Account) SetPassword(password string) error {
	// bcryptで暗号化
	hash, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
	if err != nil {
		return err
	}
	r.EncryptedPassword = string(hash)
	return nil
}

func (r *Account) CheckPassword(password string) bool {
	err := bcrypt.CompareHashAndPassword([]byte(r.EncryptedPassword), []byte(password))
	return err != nil
}
