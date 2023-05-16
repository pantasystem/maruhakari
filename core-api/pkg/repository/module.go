package repository

type Module interface {
	DeviceRepository() DeviceRepository
	AccountRepository() AccountRepository
	MeasurementHistoryRepository() MeasurementHistoryRepository
}
