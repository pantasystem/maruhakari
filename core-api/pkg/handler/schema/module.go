package schema

type Module interface {
	AccountController() AccountController
	ContainerTemplateController() ContainerTemplateController
	FoodTemplateController() FoodTemplateController
}
