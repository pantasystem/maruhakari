package endpoint

import (
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
)

type ModuleImpl struct {
	Module module.Module
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
		Module: r.Module,
	}
	return &c
}
