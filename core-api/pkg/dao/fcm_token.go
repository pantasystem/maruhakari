package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type FcmTokenRepositoryImpl struct {
	DB *gorm.DB
}

func (r *FcmTokenRepositoryImpl) Create(ctx context.Context, fcmToken *entity.FcmToken) (*entity.FcmToken, error) {
	if err := r.DB.Create(fcmToken).Error; err != nil {
		return nil, err
	}
	return fcmToken, nil
}

func (r *FcmTokenRepositoryImpl) FindByAccountID(ctx context.Context, accountID uuid.UUID) ([]*entity.FcmToken, error) {
	fcmTokens := []*entity.FcmToken{}
	result := r.DB.Where("account_id = ?", accountID).Find(&fcmTokens)
	if result.Error != nil {
		return nil, result.Error
	}
	return fcmTokens, nil
}

func (r *FcmTokenRepositoryImpl) FindByToken(ctx context.Context, token string) ([]*entity.FcmToken, error) {
	var fcmTokens []*entity.FcmToken
	result := r.DB.Where("token = ?", token).Find(fcmTokens)
	if result.Error != nil {
		return nil, result.Error
	}
	return fcmTokens, nil
}

func (r *FcmTokenRepositoryImpl) Delete(ctx context.Context, id uuid.UUID) error {
	return r.DB.Transaction(func(tx *gorm.DB) error {
		if err := r.DB.Delete(&entity.FcmToken{}, "id = ?", id).Error; err != nil {
			return err
		}
		return nil
	})
}

func (r *FcmTokenRepositoryImpl) FindOne(ctx context.Context, id uuid.UUID) (*entity.FcmToken, error) {
	fcmToken := &entity.FcmToken{}
	if err := r.DB.Where("id = ?", id).First(fcmToken).Error; err != nil {
		return nil, err
	}
	return fcmToken, nil
}

func (r *FcmTokenRepositoryImpl) DeleteByAccountIdAndToken(ctx context.Context, accountId uuid.UUID, token string) error {
	return r.DB.Delete(&entity.FcmToken{}, "account_id = ? AND token = ?", accountId, token).Error
}
