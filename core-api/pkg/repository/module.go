package repository

type Module interface {
	DeviceRepository() DeviceRepository
	AccountRepository() AccountRepository
	MeasurementHistoryRepository() MeasurementHistoryRepository
	ContainerTemplateRepository() ContainerTemplateRepository
	FoodTemplateRepository() FoodTempalteRepository
}
