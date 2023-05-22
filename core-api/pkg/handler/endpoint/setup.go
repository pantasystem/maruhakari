package endpoint

import (
	"core-api/pkg/handler/middleware"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"

	"github.com/gin-gonic/gin"
)

type SetupHandler struct {
	Module module.Module
}

func (r *SetupHandler) Setup(g *gin.Engine, c schema.Module) {
	m := middleware.DefaultAuthMiddleware{
		Module: r.Module,
	}
	ac := c.AccountController()
	g.POST("api/v1/accounts/register", ac.CreateAccount)
	g.POST("api/v1/accounts/login", ac.LoginAccount)
	g.GET("api/v1/accounts/verify", m.CheckToken(), ac.VerifyToken)

	ctc := c.ContainerTemplateController()
	g.GET("api/v1/container-templates", ctc.GetContainerTemplates)

	ftc := c.FoodTemplateController()
	g.GET("api/v1/food-templates", ftc.GetFoodTemplates)

}
