package endpoint

import (
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"

	"firebase.google.com/go/messaging"
)

type ModuleImpl struct {
	Module                 module.Module
	FirebaseMssagingClient *messaging.Client
}

func (r *ModuleImpl) AccountController() schema.AccountController {
	c := AccountHandler{
		Module: r.Module,
	}
	return &c
}

func (r *ModuleImpl) ContainerTemplateController() schema.ContainerTemplateController {
	c := ContainerTemplateHandler{
		Module: r.Module,
	}
	return &c
}

func (r *ModuleImpl) FoodTemplateController() schema.FoodTemplateController {
	c := FoodTemplateHandler{
		Module: r.Module,
	}
	return &c
}

func (r *ModuleImpl) FoodController() schema.FoodController {
	c := FoodHandler{
		Module: r.Module,
	}
	return &c
}

func (r *ModuleImpl) MeasurementHistoryController() schema.MeasurementHistoryController {
	c := MeasurementHistoryHandler{
		Module:                 r.Module,
		FirebaseMssagingClient: r.FirebaseMssagingClient,
	}
	return &c
}

func (r *ModuleImpl) DeviceController() schema.DeviceController {
	c := DeviceHandler{
		Module: r.Module,
	}
	return &c
}

func (r *ModuleImpl) FoodChartController() schema.FoodChartController {
	c := FoodChartHandler{
		Module: r.Module,
	}
	return &c
}
