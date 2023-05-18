package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type FoodRepository interface {
	Create(ctx context.Context, food *entity.Food) (*entity.Food, error)
	Update(ctx context.Context, food *entity.Food) (*entity.Food, error)
	FindByID(ctx context.Context, id uuid.UUID) (*entity.Food, error)
	FindByNfcUid(ctx context.Context, nfcUid string) (*entity.Food, error)
	FindByAccountID(ctx context.Context, accountID uuid.UUID) ([]*entity.Food, error)
	Delete(ctx context.Context, id uuid.UUID) error
}
