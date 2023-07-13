package repository

type Module interface {
	DeviceRepository() DeviceRepository
	AccountRepository() AccountRepository
	FoodRepository() FoodRepository
	MeasurementHistoryRepository() MeasurementHistoryRepository
	ContainerTemplateRepository() ContainerTemplateRepository
	FoodTemplateRepository() FoodTempalteRepository
	ConfigRepository() ConfigRepository
	FcmTokenRepostiroy() FcmTokenRepostiroy
}
