package endpoint

import (
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"net/http"

	"github.com/gin-gonic/gin"
)

type FoodTemplateHandler struct {
	Module module.Module
}

func (r *FoodTemplateHandler) GetFoodTemplates(c *gin.Context) {
	templates, err := r.Module.RepositoryModule().FoodTemplateRepository().FindAll(c)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
	}

	resTemplates := make([]*schema.FoodTemplate, len(templates))
	for i, template := range templates {
		resTemplates[i] = &schema.FoodTemplate{
			Id:            template.ID.String(),
			Name:          template.Name,
			GramPerMiller: template.GramPerMiller,
			CreatedAt:     template.CreatedAt,
			UpdatedAt:     template.UpdatedAt,
		}
	}
	c.JSON(http.StatusOK, resTemplates)
}
