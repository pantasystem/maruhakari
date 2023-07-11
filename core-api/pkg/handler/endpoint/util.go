package endpoint

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/schema"
	"core-api/pkg/module"
	"strings"

	"github.com/google/uuid"
)

type Util struct {
	Module module.Module
}

func (r *Util) ConvertToSchemaFoods(ctx context.Context, foods []*entity.Food) ([]*schema.Food, error) {
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
			CreatedAt:              &food.CreatedAt,
			UpdatedAt:              &food.UpdatedAt,
		}
		if food.NfcUid != nil {
			u := strings.ToLower(*food.NfcUid)
			pf.NfcUid = &u
		}
		protoFoods = append(protoFoods, pf)
		history := historyMap[food.ID]
		if history != nil {
			pf.RawWeightGram = history.RawWeightGram
			pf.WeightGram = history.RawWeightGram - pf.ContainerWeightGram
			pf.UpdatedAt = &history.CreatedAt
		}
	}
	return protoFoods, nil

}

func (r *Util) CovertToSchemaFood(ctx context.Context, food *entity.Food) (*schema.Food, error) {
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodID(ctx, food.ID)
	if err != nil {
		return nil, err
	}
	pf := &schema.Food{
		Id:                     food.ID.String(),
		Name:                   food.Name,
		ContainerWeightGram:    food.ContainerWeightGram,
		ContainerMaxWeightGram: food.ContainerMaxWeightGram,
		GramPerMilliliter:      food.GramPerMilliliter,
		AccountId:              food.AccountID.String(),
		CreatedAt:              &food.CreatedAt,
		UpdatedAt:              &food.UpdatedAt,
	}
	if food.NfcUid != nil {
		u := strings.ToLower(*food.NfcUid)
		pf.NfcUid = &u
	}
	if len(histories) > 0 {
		lh := histories[0]
		pf.RawWeightGram = lh.RawWeightGram
		pf.WeightGram = lh.RawWeightGram - food.ContainerWeightGram
	}
	return pf, nil
}

func NewUtil(m module.Module) *Util {
	return &Util{
		Module: m,
	}
}
