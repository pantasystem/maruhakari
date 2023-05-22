package entity

import (
	"time"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type ContainerTemplate struct {
	ID                     uuid.UUID `gorm:"primaryKey"`
	Label                  string
	ContainerWeightGram    float32
	ContainerMaxWeightGram float32
	ImagePath              string
	CreatedAt              time.Time
	UpdatedAt              time.Time
}

func (r *ContainerTemplate) BeforeCreate(tx *gorm.DB) (err error) {
	uuid, err := uuid.NewRandom()
	if err != nil {
		return err
	}
	r.ID = uuid
	return nil
}
