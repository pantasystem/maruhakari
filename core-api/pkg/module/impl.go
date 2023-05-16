package module

import (
	"core-api/pkg/dao"
	"core-api/pkg/repository"

	"gorm.io/gorm"
)

type ModuleImpl struct {
	DB *gorm.DB
}

func (r *ModuleImpl) RepositoryModule() repository.Module {
	return &dao.ModuleImpl{DB: r.DB}
}
