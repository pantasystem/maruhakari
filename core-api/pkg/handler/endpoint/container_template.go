package endpoint

import (
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"net/http"

	"github.com/gin-gonic/gin"
)

type ContainerTemplateHandler struct {
	Module module.Module
}

func (r *ContainerTemplateHandler) GetContainerTemplates(c *gin.Context) {
	templates, err := r.Module.RepositoryModule().ContainerTemplateRepository().FindAll(c)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
	}

	resTemplates := make([]*schema.ContainerTemplate, len(templates))
	for i, template := range templates {
		resTemplates[i] = &schema.ContainerTemplate{
			Id:                     template.ID.String(),
			Label:                  template.Label,
			ImageUrl:               template.ImageUrl,
			ContainerWeightGram:    template.ContainerWeightGram,
			ContainerMaxWeightGram: template.ContainerMaxWeightGram,
		}
	}
	c.JSON(http.StatusOK, templates)

}
