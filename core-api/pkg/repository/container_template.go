package repository

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
)

type ContainerTemplateRepository interface {
	Create(ctx context.Context, containerTemplate *entity.ContainerTemplate) (*entity.ContainerTemplate, error)
	Update(ctx context.Context, containerTemplate *entity.ContainerTemplate) (*entity.ContainerTemplate, error)
	FindAll(ctx context.Context) ([]*entity.ContainerTemplate, error)
	FindByID(ctx context.Context, id uuid.UUID) (*entity.ContainerTemplate, error)
}
