package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type FoodTemplateRepositoryImpl struct {
	DB *gorm.DB
}

func (r *FoodTemplateRepositoryImpl) Create(ctx context.Context, foodTemplate *entity.FoodTemplate) (*entity.FoodTemplate, error) {
	if err := r.DB.WithContext(ctx).Create(foodTemplate).Error; err != nil {
		return nil, err
	}
	return foodTemplate, nil
}

func (r *FoodTemplateRepositoryImpl) Update(ctx context.Context, foodTemplate *entity.FoodTemplate) (*entity.FoodTemplate, error) {
	if err := r.DB.WithContext(ctx).Save(foodTemplate).Error; err != nil {
		return nil, err
	}
	return foodTemplate, nil
}

func (r *FoodTemplateRepositoryImpl) FindAll(ctx context.Context) ([]*entity.FoodTemplate, error) {
	foodTemplates := []*entity.FoodTemplate{}
	if err := r.DB.WithContext(ctx).Find(&foodTemplates).Error; err != nil {
		return nil, err
	}
	return foodTemplates, nil
}

func (r *FoodTemplateRepositoryImpl) FindByID(ctx context.Context, id uuid.UUID) (*entity.FoodTemplate, error) {
	foodTemplate := &entity.FoodTemplate{}
	if err := r.DB.WithContext(ctx).Where("id = ?", id).First(foodTemplate).Error; err != nil {
		return nil, err
	}
	return foodTemplate, nil
}
