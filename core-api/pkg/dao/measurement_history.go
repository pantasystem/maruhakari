package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type MeasurementHistoryRepositoryImpl struct {
	DB *gorm.DB
}

func (r *MeasurementHistoryRepositoryImpl) Create(ctx context.Context, measurementHistory *entity.MeasurementHistory) (*entity.MeasurementHistory, error) {
	if err := r.DB.WithContext(ctx).Create(measurementHistory).Error; err != nil {
		return nil, err
	}
	return measurementHistory, nil
}

func (r *MeasurementHistoryRepositoryImpl) FindLatestByFoodIDs(ctx context.Context, foodIDs []uuid.UUID) ([]*entity.MeasurementHistory, error) {
	return nil, nil
}
