package schema

import (
	"time"

	"github.com/gin-gonic/gin"
)

type Food struct {
	Id                     string     `json:"id"`
	Name                   string     `json:"name"`
	ContainerWeightGram    float32    `json:"container_weight_gram"`
	ContainerMaxWeightGram float32    `json:"container_max_weight_gram"`
	GramPerMilliliter      *float32   `json:"gram_per_milliliter"`
	AccountId              string     `json:"account_id"`
	NfcUid                 string     `json:"nfc_uid"`
	RawWeightGram          float32    `json:"raw_weight_gram"`
	WeightGram             float32    `json:"weight_gram"`
	CreatedAt              *time.Time `json:"created_at,omitempty"`
	UpdatedAt              *time.Time `json:"updated_at,omitempty"`
}

type CreateFoodRequest struct {
	Name                   string   `json:"name"`
	NfcUid                 string   `json:"nfc_uid"`
	ContainerWeightGram    float32  `json:"container_weight_gram"`
	ContainerMaxWeightGram float32  `json:"container_max_weight_gram"`
	GramPerMilliliter      *float32 `json:"gram_per_milliliter"`
	Force                  bool     `json:"force"`
}

type UpdateFoodRequest struct {
	Id                     string   `json:"id"`
	Name                   string   `json:"name"`
	NfcUid                 string   `json:"nfc_uid"`
	ContainerWeightGram    float32  `json:"container_weight_gram"`
	ContainerMaxWeightGram float32  `json:"container_max_weight_gram"`
	GramPerMilliliter      *float32 `json:"gram_per_milliliter"`
	Force                  bool     `json:"force"`
}

type MyFoodsResponse struct {
	Foods          []*Food `json:"foods"`
	LowWeightFoods []*Food `json:"low_weight_foods"`
	UnusedFoods    []*Food `json:"unused_foods"`
}

type FoodController interface {
	CreateFood(c *gin.Context)
	UpdateFood(c *gin.Context)
	FindFoodByNfcUid(c *gin.Context)
	FindFoodById(c *gin.Context)
	FindByOwnFoods(c *gin.Context)
}
