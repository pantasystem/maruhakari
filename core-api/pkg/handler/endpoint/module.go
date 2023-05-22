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
