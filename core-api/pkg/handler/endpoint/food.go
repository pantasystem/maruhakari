package endpoint

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/middleware"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"errors"
	"net/http"

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
	f, err := r.Module.RepositoryModule().FoodRepository().FindByAccountIdAndNfcUid(c, aId, nfcUid)
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

func (r *FoodHandler) FindByOwnFoods(c *gin.Context) {
	aId, err := uuid.Parse(c.GetString("accountId"))
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	foods, err := r.Module.RepositoryModule().FoodRepository().FindByAccountID(c, aId)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	foodList, err := r.ConvertToProtoFoods(c, foods)
	if err != nil {
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
	c.JSON(http.StatusOK, &schema.MyFoodsResponse{
		Foods:          foodList,
		LowWeightFoods: lowWeightFoods,
		UnusedFoods:    nil,
	})

}

func (r *FoodHandler) ConvertToProtoFoods(ctx context.Context, foods []*entity.Food) ([]*schema.Food, error) {
	foodIds := make([]uuid.UUID, len(foods))
	for i, food := range foods {
		foodIds[i] = food.ID
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(ctx, foodIds)
	if err != nil {
		return nil, err
	}
	historyMap := make(map[uuid.UUID]*entity.MeasurementHistory)
	for _, history := range histories {
		historyMap[history.FoodID] = history
	}
	var protoFoods []*schema.Food
	for _, food := range foods {
		pf := &schema.Food{
			Id:                     food.ID.String(),
			Name:                   food.Name,
			ContainerWeightGram:    food.ContainerWeightGram,
			ContainerMaxWeightGram: food.ContainerMaxWeightGram,
			GramPerMilliliter:      food.GramPerMilliliter,
			AccountId:              food.AccountID.String(),
			NfcUid:                 food.NfcUid,
			CreatedAt:              &food.CreatedAt,
			UpdatedAt:              &food.UpdatedAt,
		}
		protoFoods = append(protoFoods, pf)
		history := historyMap[food.ID]
		if history != nil {
			pf.RawWeightGram = history.RawWeightGram
			pf.WeightGram = history.RawWeightGram - pf.ContainerWeightGram
		}
	}
	return protoFoods, nil

}
