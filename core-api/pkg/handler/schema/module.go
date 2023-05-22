package schema

type Module interface {
	AccountController() AccountController
	ContainerTemplateController() ContainerTemplateController
}
