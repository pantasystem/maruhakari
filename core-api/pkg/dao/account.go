package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type AccountRepositoryImpl struct {
	DB *gorm.DB
}

func (r *AccountRepositoryImpl) FindByID(ctx context.Context, id uuid.UUID) (*entity.Account, error) {
	account := &entity.Account{}
	if err := r.DB.WithContext(ctx).Where("id = ?", id).First(account).Error; err != nil {
		return nil, err
	}
	return account, nil
}

func (r *AccountRepositoryImpl) FindByUsername(ctx context.Context, username string) (*entity.Account, error) {
	account := &entity.Account{}
	if err := r.DB.WithContext(ctx).Where("username = ?", username).First(account).Error; err != nil {
		return nil, err
	}
	return account, nil
}

func (r *AccountRepositoryImpl) FindByToken(ctx context.Context, token string) (*entity.Account, error) {
	account := &entity.Account{}
	if err := r.DB.WithContext(ctx).Where("token = ?", token).First(account).Error; err != nil {
		return nil, err
	}
	return account, nil
}

func (r *AccountRepositoryImpl) Create(ctx context.Context, account *entity.Account) (*entity.Account, error) {
	if err := r.DB.WithContext(ctx).Create(account).Error; err != nil {
		return nil, err
	}
	return account, nil
}

func (r *AccountRepositoryImpl) Update(ctx context.Context, account *entity.Account) (*entity.Account, error) {
	err := r.DB.WithContext(ctx).Model(&entity.Account{}).
		Where("id = ?", account.ID).
		Select(
			"Username",
			"EncryptedPassword",
			"Token",
		).
		Updates(account)
	if err.Error != nil {
		return nil, err.Error
	}
	return r.FindByID(ctx, account.ID)
}

func (r *AccountRepositoryImpl) Delete(ctx context.Context, id uuid.UUID) error {
	if err := r.DB.WithContext(ctx).Delete(&entity.Account{}, id).Error; err != nil {
		return err
	}
	return nil
}
