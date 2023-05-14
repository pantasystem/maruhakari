package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type FoodTempalteRepository interface {
	Create(ctx context.Context, foodTemplate *entity.FoodTemplate) (*entity.FoodTemplate, error)
	Update(ctx context.Context, foodTemplate *entity.FoodTemplate) (*entity.FoodTemplate, error)
	FindAll(ctx context.Context) ([]*entity.FoodTemplate, error)
	FindByID(ctx context.Context, id uuid.UUID) (*entity.FoodTemplate, error)
}
