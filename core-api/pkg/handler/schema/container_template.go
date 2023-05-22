package schema

import "github.com/gin-gonic/gin"

type ContainerTemplate struct {
	Id                     string  `json:"id"`
	Label                  string  `json:"label"`
	ImageUrl               string  `json:"image_url"`
	ContainerWeightGram    float32 `json:"container_weight_gram"`
	ContainerMaxWeightGram float32 `json:"container_max_weight_gram"`
}

type ContainerTemplateController interface {
	GetContainerTemplates(c *gin.Context)
}
