package handler

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"
	"fmt"

	"github.com/google/uuid"
)

type FoodHandler struct {
	proto.UnimplementedFoodServiceServer
	Module module.Module
}

func (r *FoodHandler) CreateFood(ctx context.Context, in *proto.CreateFoodRequest) (*proto.Food, error) {
	aId, ok := ctx.Value(AccountId).(string)
	if !ok {
		return nil, fmt.Errorf("invalid account id")
	}
	aUuid, err := uuid.Parse(aId)
	if err != nil {
		return nil, err
	}
	f, err := r.Module.RepositoryModule().FoodRepository().Create(ctx, &entity.Food{
		ContainerWeightGram:    in.ContainerWeightGram,
		ContainerMaxWeightGram: in.ContainerMaxWeightGram,
		GramPerMilliliter:      in.GramPerMilliliter,
		Name:                   in.Name,
		AccountID:              aUuid,
		NfcUid:                 in.NfcUid,
	})
	if err != nil {
		return nil, err
	}

	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(ctx, []uuid.UUID{f.ID})
	food := &proto.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
	}
	if len(histories) > 0 {
		latestHistory := histories[0]
		food.RawWeightGram = latestHistory.RawWeightGram
		food.WeightGram = latestHistory.RawWeightGram - food.ContainerWeightGram
	}
	return food, nil
}
