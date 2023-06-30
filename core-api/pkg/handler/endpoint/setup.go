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

	fc := c.FoodController()
	g.GET("api/v1/foods", m.CheckToken(), fc.FindByOwnFoods)
	g.GET("api/v1/foods/:foodId", m.CheckToken(), fc.FindFoodById)
	g.GET("api/v1/foods/:foodId/related-nfc", m.CheckToken(), fc.FindFoodByNfcUid)
	g.POST("api/v1/foods", m.CheckToken(), fc.CreateFood)
	g.PUT("api/v1/foods/:foodId", m.CheckToken(), fc.UpdateFood)

	mhc := c.MeasurementHistoryController()
	g.POST("api/v1/measurement-histories", mhc.RecordHistory)
	g.GET("api/v1/foods/:foodId/measurement-histories", m.CheckToken(), mhc.FindHistory)

	dc := c.DeviceController()
	g.GET("api/v1/devices", m.CheckToken(), dc.GetOwnDevices)
	g.POST("api/v1/devices", m.CheckToken(), dc.SaveDevice)

	fcc := c.FoodChartController()
	g.GET("api/v1/foods/:foodId/chart", m.CheckToken(), fcc.GetFoodChart)

	g.Static("/container-images", "./container-images")
}
