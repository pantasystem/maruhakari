package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type MeasurementHistoryRepository interface {
	Create(ctx context.Context, measurementHistory *entity.MeasurementHistory) (*entity.MeasurementHistory, error)
	FindLatestByFoodIDs(ctx context.Context, foodIDs []uuid.UUID) ([]*entity.MeasurementHistory, error)
}
