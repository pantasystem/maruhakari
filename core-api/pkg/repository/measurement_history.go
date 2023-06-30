package repository

import (
	"context"
	"core-api/pkg/entity"
	"time"

	"github.com/google/uuid"
)

type MeasurementHistoryRepository interface {
	Create(ctx context.Context, measurementHistory *entity.MeasurementHistory) (*entity.MeasurementHistory, error)
	FindLatestByFoodIDs(ctx context.Context, foodIDs []uuid.UUID) ([]*entity.MeasurementHistory, error)
	FindByRange(ctx context.Context, foodID uuid.UUID, beginAt time.Time, endAt time.Time) ([]*entity.MeasurementHistory, error)
}
