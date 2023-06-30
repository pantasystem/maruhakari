package dao

import (
	"context"
	"core-api/pkg/entity"
	"time"

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
	measurementHistories := []*entity.MeasurementHistory{}
	result := r.DB.WithContext(ctx).Where(`
		exists(
			select 1 from(
				select max(id) as id from measurement_histories 
					where food_id in ? group by food_id
			) mh2 where mh2.id = measurement_histories.id
		)`, foodIDs).Find(&measurementHistories)
	if result.Error != nil {
		return nil, result.Error
	}
	return measurementHistories, nil
}

func (r *MeasurementHistoryRepositoryImpl) FindByRange(ctx context.Context, foodID uuid.UUID, beginAt time.Time, endAt time.Time) ([]*entity.MeasurementHistory, error) {
	measurementHistories := []*entity.MeasurementHistory{}
	result := r.DB.WithContext(ctx).Where("food_id = ? and created_at between ? and ?", foodID, beginAt, endAt).Find(&measurementHistories)
	if result.Error != nil {
		return nil, result.Error
	}
	return measurementHistories, nil
}

func (r *MeasurementHistoryRepositoryImpl) FindLatestByFoodID(ctx context.Context, foodID uuid.UUID) ([]*entity.MeasurementHistory, error) {
	measurementHistories := []*entity.MeasurementHistory{}
	result := r.DB.WithContext(ctx).Where("food_id = ?", foodID).Order("created_at desc").Limit(1).Find(&measurementHistories)
	if result.Error != nil {
		return nil, result.Error
	}
	return measurementHistories, nil
}
