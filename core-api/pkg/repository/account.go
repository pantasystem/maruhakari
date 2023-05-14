package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type AccountRepository interface {
	FindByID(ctx context.Context, id uuid.UUID) (*entity.Account, error)
	FindByUsername(ctx context.Context, username string) (*entity.Account, error)
	FindByToken(ctx context.Context, token string) (*entity.Account, error)
	Create(ctx context.Context, account *entity.Account) (*entity.Account, error)
	Update(ctx context.Context, account *entity.Account) (*entity.Account, error)
	Delete(ctx context.Context, id uuid.UUID) error
}
