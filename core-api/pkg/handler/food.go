package handler

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"
	"fmt"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/timestamppb"
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
	if err != nil {
		return nil, err
	}
	food := &proto.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
		UpdatedAt: &timestamppb.Timestamp{
			Seconds: f.UpdatedAt.Unix(),
			Nanos:   int32(f.UpdatedAt.Nanosecond()),
		},
		CreatedAt: &timestamppb.Timestamp{
			Seconds: f.CreatedAt.Unix(),
			Nanos:   int32(f.CreatedAt.Nanosecond()),
		},
	}
	if len(histories) > 0 {
		latestHistory := histories[0]
		food.RawWeightGram = latestHistory.RawWeightGram
		food.WeightGram = latestHistory.RawWeightGram - food.ContainerWeightGram
	}
	return food, nil
}

func (r *FoodHandler) UpdateFood(ctx context.Context, in *proto.UpdateFoodRequest) (*proto.Food, error) {
	aId, ok := ctx.Value(AccountId).(string)
	if !ok {
		return nil, fmt.Errorf("invalid account id")
	}
	aUuid, err := uuid.Parse(aId)
	if err != nil {
		return nil, err
	}
	fId, err := uuid.Parse(in.Id)
	if err != nil {
		return nil, err
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByID(ctx, fId)
	if err != nil {
		return nil, err
	}
	if f.AccountID != aUuid {
		return nil, fmt.Errorf("invalid account id")
	}
	f.Name = in.Name
	f.NfcUid = in.NfcUid
	f.ContainerMaxWeightGram = in.ContainerMaxWeightGram
	f.ContainerWeightGram = in.ContainerWeightGram
	f.GramPerMilliliter = in.GramPerMilliliter
	f, err = r.Module.RepositoryModule().FoodRepository().Update(ctx, f)
	if err != nil {
		return nil, err
	}

	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(ctx, []uuid.UUID{f.ID})
	if err != nil {
		return nil, err
	}
	food := &proto.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
		CreatedAt: &timestamppb.Timestamp{
			Seconds: f.CreatedAt.Unix(),
			Nanos:   int32(f.CreatedAt.Nanosecond()),
		},
		UpdatedAt: &timestamppb.Timestamp{
			Seconds: f.UpdatedAt.Unix(),
			Nanos:   int32(f.UpdatedAt.Nanosecond()),
		},
	}
	if len(histories) > 0 {
		latestHistory := histories[0]
		food.RawWeightGram = latestHistory.RawWeightGram
		food.WeightGram = latestHistory.RawWeightGram - food.ContainerWeightGram
	}
	return food, nil
}

func (r *FoodHandler) FindFoodByNfcUid(ctx context.Context, in *proto.FindFoodByNfcUidRequest) (*proto.Food, error) {
	aId, ok := ctx.Value(AccountId).(string)
	if !ok {
		return nil, fmt.Errorf("invalid account id")
	}
	aUuid, err := uuid.Parse(aId)
	if err != nil {
		return nil, err
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByNfcUid(ctx, in.NfcUid)
	if err != nil {
		return nil, err
	}
	if f.AccountID != aUuid {
		return nil, fmt.Errorf("invalid account id")
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(ctx, []uuid.UUID{f.ID})
	if err != nil {
		return nil, err
	}
	food := &proto.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
		CreatedAt: &timestamppb.Timestamp{
			Seconds: f.CreatedAt.Unix(),
			Nanos:   int32(f.CreatedAt.Nanosecond()),
		},
		UpdatedAt: &timestamppb.Timestamp{
			Seconds: f.UpdatedAt.Unix(),
			Nanos:   int32(f.UpdatedAt.Nanosecond()),
		},
	}
	if len(histories) > 0 {
		latestHistory := histories[0]
		food.RawWeightGram = latestHistory.RawWeightGram
		food.WeightGram = latestHistory.RawWeightGram - food.ContainerWeightGram
	}
	return food, nil
}

func (r *FoodHandler) FindFoodById(ctx context.Context, in *proto.FindFoodByIdRequest) (*proto.Food, error) {
	aId, ok := ctx.Value(AccountId).(string)
	if !ok {
		return nil, fmt.Errorf("invalid account id")
	}
	aUuid, err := uuid.Parse(aId)
	if err != nil {
		return nil, err
	}
	fId, err := uuid.Parse(in.Id)
	if err != nil {
		return nil, err
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByID(ctx, fId)
	if err != nil {
		return nil, err
	}
	if f.AccountID != aUuid {
		return nil, fmt.Errorf("invalid account id")
	}
	histories, err := r.Module.RepositoryModule().MeasurementHistoryRepository().FindLatestByFoodIDs(ctx, []uuid.UUID{f.ID})
	if err != nil {
		return nil, err
	}
	food := &proto.Food{
		Id:                     f.ID.String(),
		Name:                   f.Name,
		ContainerWeightGram:    f.ContainerWeightGram,
		ContainerMaxWeightGram: f.ContainerMaxWeightGram,
		GramPerMilliliter:      f.GramPerMilliliter,
		AccountId:              f.AccountID.String(),
		NfcUid:                 f.NfcUid,
		CreatedAt: &timestamppb.Timestamp{
			Seconds: f.CreatedAt.Unix(),
			Nanos:   int32(f.CreatedAt.Nanosecond()),
		},
		UpdatedAt: &timestamppb.Timestamp{
			Seconds: f.UpdatedAt.Unix(),
			Nanos:   int32(f.UpdatedAt.Nanosecond()),
		},
	}
	if len(histories) > 0 {
		latestHistory := histories[0]
		food.RawWeightGram = latestHistory.RawWeightGram
		food.WeightGram = latestHistory.RawWeightGram - food.ContainerWeightGram
	}
	return food, nil
}

func (r *FoodHandler) FindByOwnFoods(ctx context.Context, in *emptypb.Empty) (*proto.MyFoods, error) {
	aId, ok := ctx.Value(AccountId).(string)
	if !ok {
		return nil, fmt.Errorf("invalid account id")
	}
	aUuid, err := uuid.Parse(aId)
	if err != nil {
		return nil, err
	}
	foods, err := r.Module.RepositoryModule().FoodRepository().FindByAccountID(ctx, aUuid)
	if err != nil {
		return nil, err
	}
	var foodList []*proto.Food
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
	for _, food := range foods {
		pf := &proto.Food{
			Id:                     food.ID.String(),
			Name:                   food.Name,
			ContainerWeightGram:    food.ContainerWeightGram,
			ContainerMaxWeightGram: food.ContainerMaxWeightGram,
			GramPerMilliliter:      food.GramPerMilliliter,
			AccountId:              food.AccountID.String(),
			NfcUid:                 food.NfcUid,
			CreatedAt: &timestamppb.Timestamp{
				Seconds: food.CreatedAt.Unix(),
				Nanos:   int32(food.CreatedAt.Nanosecond()),
			},
			UpdatedAt: &timestamppb.Timestamp{
				Seconds: food.UpdatedAt.Unix(),
				Nanos:   int32(food.UpdatedAt.Nanosecond()),
			},
		}
		foodList = append(foodList, pf)
		history := historyMap[food.ID]
		if history != nil {
			pf.RawWeightGram = history.RawWeightGram
			pf.WeightGram = history.RawWeightGram - pf.ContainerWeightGram
		}
	}
	return &proto.MyFoods{
		Foods: foodList,
	}, nil

}
