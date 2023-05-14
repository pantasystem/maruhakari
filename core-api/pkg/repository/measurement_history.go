package repository

import (
	"context"
	"core-api/pkg/entity"
)

type MeasurementHistoryRepository interface {
	Create(ctx context.Context, measurementHistory *entity.MeasurementHistory) (*entity.MeasurementHistory, error)
	FindLatestByFoodIDs(ctx context.Context, foodIDs []string) ([]*entity.MeasurementHistory, error)
}
