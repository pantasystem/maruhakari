package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type FoodRepositoryImpl struct {
	DB *gorm.DB
}

func (r *FoodRepositoryImpl) Create(ctx context.Context, food *entity.Food) (*entity.Food, error) {
	if err := r.DB.WithContext(ctx).Create(food).Error; err != nil {
		return nil, err
	}
	return food, nil
}

func (r *FoodRepositoryImpl) Update(ctx context.Context, food *entity.Food) (*entity.Food, error) {
	if err := r.DB.WithContext(ctx).Save(food).Error; err != nil {
		return nil, err
	}
	return food, nil
}

func (r *FoodRepositoryImpl) FindByID(ctx context.Context, id uuid.UUID) (*entity.Food, error) {
	food := &entity.Food{}
	if err := r.DB.WithContext(ctx).Where("id = ?", id).First(food).Error; err != nil {
		return nil, err
	}
	return food, nil
}

func (r *FoodRepositoryImpl) FindByNfcUid(ctx context.Context, nfcUid string) (*entity.Food, error) {
	food := &entity.Food{}
	if err := r.DB.WithContext(ctx).Where("nfc_uid = ?", nfcUid).First(food).Error; err != nil {
		return nil, err
	}
	return food, nil
}

func (r *FoodRepositoryImpl) FindByAccountID(ctx context.Context, accountID uuid.UUID) ([]*entity.Food, error) {
	foods := []*entity.Food{}
	result := r.DB.WithContext(ctx).Where("account_id = ?", accountID).Find(&foods)
	if result.Error != nil {
		return nil, result.Error
	}
	return foods, nil
}

func (r *FoodRepositoryImpl) Delete(ctx context.Context, id uuid.UUID) error {
	if err := r.DB.WithContext(ctx).Delete(&entity.Food{}, id).Error; err != nil {
		return err
	}
	return nil
}
