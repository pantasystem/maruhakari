package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type FcmTokenRepostiroy interface {
	FindByAccountID(ctx context.Context, accountID uuid.UUID) ([]*entity.FcmToken, error)
	FindByToken(ctx context.Context, token string) ([]*entity.FcmToken, error)
	Create(ctx context.Context, fcmToken *entity.FcmToken) (*entity.FcmToken, error)
	Delete(ctx context.Context, id uuid.UUID) error
	FindOne(ctx context.Context, id uuid.UUID) (*entity.FcmToken, error)
}
