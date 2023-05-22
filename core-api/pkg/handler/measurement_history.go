package handler

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"

	"google.golang.org/protobuf/types/known/timestamppb"
)

type MeasurementHistoryHandler struct {
	proto.UnimplementedMeasurementHistoryServiceServer
	Module module.Module
}

func (r *MeasurementHistoryHandler) RecordHistory(ctx context.Context, in *proto.RecordHistoryRequest) (*proto.MeasurementHistory, error) {

	dev, err := r.Module.RepositoryModule().DeviceRepository().FindByToken(ctx, in.DeviceToken)
	if err != nil {
		return nil, err
	}

	f, err := r.Module.RepositoryModule().FoodRepository().FindByAccountIdAndNfcUid(ctx, dev.AccountID, in.NfcUid)
	if err != nil {
		return nil, err
	}

	h, err := r.Module.RepositoryModule().MeasurementHistoryRepository().Create(
		ctx,
		&entity.MeasurementHistory{
			FoodID:        f.ID,
			RawWeightGram: in.Weight,
		},
	)
	if err != nil {
		return nil, err
	}
	return &proto.MeasurementHistory{
		Id:     h.ID,
		FoodId: f.ID.String(),
		Weight: h.RawWeightGram,
		CreatedAt: &timestamppb.Timestamp{
			Seconds: h.CreatedAt.Unix(),
			Nanos:   int32(h.CreatedAt.Nanosecond()),
		},
	}, nil
}
