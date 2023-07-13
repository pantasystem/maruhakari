package endpoint

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/middleware"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"errors"
	"fmt"
	"net/http"
	"sort"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type FoodHandler struct {
	Module module.Module
}

func (r *FoodHandler) CreateFood(c *gin.Context) {
	var req schema.CreateFoodRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	exists, err := r.Module.RepositoryModule().FoodRepository().FindByAccountIdAndNfcUid(c, aId, req.NfcUid)
	if err != nil && !errors.Is(err, gorm.ErrRecordNotFound) {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
	}
	if exists != nil && req.Force {
		exists.NfcUid = nil
		_, err = r.Module.RepositoryModule().FoodRepository().Update(c, exists)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
	}

	f, err := r.Module.RepositoryModule().FoodRepository().Create(c, &entity.Food{
		ContainerWeightGram:    req.ContainerWeightGram,
		ContainerMaxWeightGram: req.ContainerMaxWeightGram,
		GramPerMilliliter:      req.GramPerMilliliter,
		Name:                   req.Name,
		AccountID:              aId,
		NfcUid:                 &req.NfcUid,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(c, []uuid.UUID{f.ID})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	sFood := &schema.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
		UpdatedAt:              &f.UpdatedAt,
		CreatedAt:              &f.CreatedAt,
	}

	if len(histories) > 0 {
		lh := histories[0]
		sFood.RawWeightGram = lh.RawWeightGram
		sFood.WeightGram = lh.RawWeightGram - f.ContainerWeightGram
	}
	c.JSON(http.StatusOK, sFood)
}

func (r *FoodHandler) UpdateFood(c *gin.Context) {
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	var req schema.UpdateFoodRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	fId, ok := c.Params.Get("foodId")
	if !ok {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid food id"})
		return
	}
	fUuid, err := uuid.Parse(fId)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	f, err := r.Module.RepositoryModule().FoodRepository().FindByID(c, fUuid)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusNotFound, gin.H{"error": err.Error()})
		} else {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		}
		return
	}
	if f.AccountID != aId {
		c.JSON(http.StatusNotFound, gin.H{"error": "not found"})
		return
	}
	f.Name = req.Name
	f.NfcUid = &req.NfcUid
	f.ContainerWeightGram = req.ContainerWeightGram
	f.ContainerMaxWeightGram = req.ContainerMaxWeightGram
	f.GramPerMilliliter = req.GramPerMilliliter
	f, err = r.Module.RepositoryModule().FoodRepository().Update(c, f)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(c, []uuid.UUID{f.ID})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	sFood := &schema.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
		UpdatedAt:              &f.UpdatedAt,
		CreatedAt:              &f.CreatedAt,
	}

	if len(histories) > 0 {
		lh := histories[0]
		sFood.RawWeightGram = lh.RawWeightGram
		sFood.WeightGram = lh.RawWeightGram - f.ContainerWeightGram
	}
	c.JSON(http.StatusOK, sFood)

}

func (r *FoodHandler) FindFoodByNfcUid(c *gin.Context) {
	nfcUid, ok := c.Params.Get("nfcUid")
	if !ok {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid nfc uid"})
		return
	}
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	f, err := r.Module.RepositoryModule().FoodRepository().FindByAccountIdAndNfcUid(c, aId, strings.ToLower(nfcUid))
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusNotFound, gin.H{"error": err.Error()})
		} else {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		}
		return
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(c, []uuid.UUID{f.ID})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	sFood := &schema.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		UpdatedAt:              &f.UpdatedAt,
		CreatedAt:              &f.CreatedAt,
	}
	if f.NfcUid != nil {
		u := strings.ToLower(*f.NfcUid)
		sFood.NfcUid = &u
	}

	if len(histories) > 0 {
		lh := histories[0]
		sFood.RawWeightGram = lh.RawWeightGram
		sFood.WeightGram = lh.RawWeightGram - f.ContainerWeightGram
	}
	c.JSON(http.StatusOK, sFood)
}

func (r *FoodHandler) FindFoodById(c *gin.Context) {
	fId, ok := c.Params.Get("foodId")
	if !ok {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid food id"})
		return
	}
	fUuid, err := uuid.Parse(fId)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	f, err := r.Module.RepositoryModule().FoodRepository().FindByID(c, fUuid)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusNotFound, gin.H{"error": err.Error()})
		} else {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		}
		return
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(c, []uuid.UUID{f.ID})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	sFood := &schema.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		UpdatedAt:              &f.UpdatedAt,
		CreatedAt:              &f.CreatedAt,
	}
	if f.NfcUid != nil {
		u := strings.ToLower(*f.NfcUid)
		sFood.NfcUid = &u
	}

	if len(histories) > 0 {
		lh := histories[0]
		sFood.RawWeightGram = lh.RawWeightGram
		sFood.WeightGram = lh.RawWeightGram - f.ContainerWeightGram
	}
	c.JSON(http.StatusOK, sFood)
}

func (r *FoodHandler) FindByOwnFoods(c *gin.Context) {
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		fmt.Printf("error: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	foods, err := r.Module.RepositoryModule().FoodRepository().FindByAccountID(c, aId)
	if err != nil {
		fmt.Printf("error: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	foodList, err := r.ConvertToProtoFoods(c, foods)
	if err != nil {
		fmt.Printf("error: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	lowWeightFoods := make([]*schema.Food, 0)
	for _, food := range foodList {
		p := food.WeightGram / food.ContainerWeightGram
		if p < 0.1 {
			lowWeightFoods = append(lowWeightFoods, food)
		}
	}
	unusedFoods := make([]*schema.Food, 0)

	// foodListをupdatedAtでソートする
	// updatedAtが新しい順に並べる
	sort.Slice(foodList, func(i, j int) bool {
		if foodList[i].UpdatedAt == nil {
			return false
		}
		if foodList[j].UpdatedAt == nil {
			return true
		}
		return foodList[i].UpdatedAt.After(*foodList[j].UpdatedAt)
	})

	c.JSON(http.StatusOK, &schema.MyFoodsResponse{
		Foods:          foodList,
		LowWeightFoods: lowWeightFoods,
		UnusedFoods:    unusedFoods,
	})

}

func (r *FoodHandler) DeleteFood(c *gin.Context) {
	aId, err := uuid.Parse(c.GetString(middleware.AccountId))
	if err != nil {
		fmt.Printf("error: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	fId, ok := c.Params.Get("foodId")
	if !ok {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid food id"})
		return
	}
	fUuid, err := uuid.Parse(fId)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	f, err := r.Module.RepositoryModule().FoodRepository().FindByID(c, fUuid)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusNotFound, gin.H{"error": err.Error()})
		} else {
			fmt.Printf("find food failed: %v\n", err)
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		}
		return
	}
	if f.AccountID != aId {
		c.JSON(http.StatusNotFound, gin.H{"error": "not found"})
		return
	}
	err = r.Module.RepositoryModule().FoodRepository().Delete(c, f.ID)
	if err != nil {
		fmt.Printf("delete food failed: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, nil)
}

func (r *FoodHandler) ConvertToProtoFoods(ctx context.Context, foods []*entity.Food) ([]*schema.Food, error) {
	return NewUtil(r.Module).ConvertToSchemaFoods(ctx, foods)
}
