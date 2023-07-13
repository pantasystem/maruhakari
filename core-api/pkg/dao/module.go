package dao

import (
	"core-api/pkg/repository"

	"gorm.io/gorm"
)

type ModuleImpl struct {
	DB *gorm.DB
}

func (r *ModuleImpl) AccountRepository() repository.AccountRepository {
	return &AccountRepositoryImpl{DB: r.DB}
}

func (r *ModuleImpl) ContainerTemplateRepository() repository.ContainerTemplateRepository {
	return &ContainerTemplateRepositoryImpl{DB: r.DB}
}

func (r *ModuleImpl) DeviceRepository() repository.DeviceRepository {
	return &DeviceRepositoryImpl{DB: r.DB}
}

func (r *ModuleImpl) FoodTemplateRepository() repository.FoodTempalteRepository {
	return &FoodTemplateRepositoryImpl{DB: r.DB}
}

func (r *ModuleImpl) MeasurementHistoryRepository() repository.MeasurementHistoryRepository {
	return &MeasurementHistoryRepositoryImpl{DB: r.DB}
}

func (r *ModuleImpl) FoodRepository() repository.FoodRepository {
	return &FoodRepositoryImpl{DB: r.DB}
}

func (r *ModuleImpl) ConfigRepository() repository.ConfigRepository {
	return NewConfigRepository()
}

func (r *ModuleImpl) FcmTokenRepostiroy() repository.FcmTokenRepostiroy {
	return &FcmTokenRepositoryImpl{DB: r.DB}
}
