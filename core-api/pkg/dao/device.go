package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type DeviceRepositoryImpl struct {
	DB *gorm.DB
}

func (r *DeviceRepositoryImpl) FindByToken(ctx context.Context, token string) (*entity.Device, error) {
	device := &entity.Device{}
	if err := r.DB.WithContext(ctx).Where("token = ?", token).First(device).Error; err != nil {
		return nil, err
	}
	return device, nil
}

func (r *DeviceRepositoryImpl) Create(ctx context.Context, device *entity.Device) (*entity.Device, error) {
	if err := r.DB.WithContext(ctx).Create(device).Error; err != nil {
		return nil, err
	}
	return device, nil
}

func (r *DeviceRepositoryImpl) Update(ctx context.Context, device *entity.Device) (*entity.Device, error) {
	if err := r.DB.WithContext(ctx).Save(device).Error; err != nil {
		return nil, err
	}
	return device, nil
}

func (r *DeviceRepositoryImpl) FindByID(ctx context.Context, id uuid.UUID) (*entity.Device, error) {
	device := &entity.Device{}
	if err := r.DB.WithContext(ctx).Where("id = ?", id).First(device).Error; err != nil {
		return nil, err
	}
	return device, nil
}