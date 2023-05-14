package dao

import (
	"context"
	"core-api/pkg/entity"

	"github.com/google/uuid"
	"gorm.io/gorm"
)

type ContainerTemplateRepositoryImpl struct {
	DB *gorm.DB
}

func (r *ContainerTemplateRepositoryImpl) Create(ctx context.Context, containerTemplate *entity.ContainerTemplate) (*entity.ContainerTemplate, error) {
	if err := r.DB.WithContext(ctx).Create(containerTemplate).Error; err != nil {
		return nil, err
	}
	return containerTemplate, nil
}

func (r *ContainerTemplateRepositoryImpl) Update(ctx context.Context, containerTemplate *entity.ContainerTemplate) (*entity.ContainerTemplate, error) {
	if err := r.DB.WithContext(ctx).Save(containerTemplate).Error; err != nil {
		return nil, err
	}
	return containerTemplate, nil
}

func (r *ContainerTemplateRepositoryImpl) FindAll(ctx context.Context) ([]*entity.ContainerTemplate, error) {
	containerTemplates := []*entity.ContainerTemplate{}
	if err := r.DB.WithContext(ctx).Find(&containerTemplates).Error; err != nil {
		return nil, err
	}
	return containerTemplates, nil
}

func (r *ContainerTemplateRepositoryImpl) FindByID(ctx context.Context, id uuid.UUID) (*entity.ContainerTemplate, error) {
	containerTemplate := &entity.ContainerTemplate{}
	if err := r.DB.WithContext(ctx).Where("id = ?", id).First(containerTemplate).Error; err != nil {
		return nil, err
	}
	return containerTemplate, nil
}
