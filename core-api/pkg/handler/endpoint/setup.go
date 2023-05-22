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

func (r *SetupHandler) Setup(g *gin.Engine, c schema.AccountController) {
	m := middleware.DefaultAuthMiddleware{
		Module: r.Module,
	}
	g.POST("api/v1/accounts/register", c.CreateAccount)
	g.POST("api/v1/accounts/login", c.LoginAccount)
	g.GET("api/v1/accounts/verify", m.CheckToken(), c.VerifyToken)

}
