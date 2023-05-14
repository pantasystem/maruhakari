package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type DeviceRepository interface {
	FindByToken(ctx context.Context, token string) (*entity.Device, error)
	Create(ctx context.Context, device *entity.Device) (*entity.Device, error)
	Update(ctx context.Context, device *entity.Device) (*entity.Device, error)
	FindByID(ctx context.Context, id uuid.UUID) (*entity.Device, error)
}
