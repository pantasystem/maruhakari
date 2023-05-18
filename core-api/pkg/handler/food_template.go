package handler

import (
	"context"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"

	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type FoodTemplateHandler struct {
	Module module.Module
	proto.UnimplementedFoodTemplateServiceServer
}

func (r *FoodTemplateHandler) GetFoodTemplateList(ctx context.Context, in *emptypb.Empty) (*proto.FoodTemplateList, error) {
	templates, err := r.Module.RepositoryModule().FoodTemplateRepository().FindAll(ctx)
	if err != nil {
		return nil, err
	}
	var foodTemplates []*proto.FoodTemplate
	for _, template := range templates {
		foodTemplates = append(foodTemplates, &proto.FoodTemplate{
			Id:            template.ID.String(),
			Name:          template.Name,
			GramPerMiller: template.GramPerMiller,
			CreatedAt: &timestamppb.Timestamp{
				Seconds: template.CreatedAt.Unix(),
				Nanos:   int32(template.CreatedAt.Nanosecond()),
			},
			UpdatedAt: &timestamppb.Timestamp{
				Seconds: template.UpdatedAt.Unix(),
				Nanos:   int32(template.UpdatedAt.Nanosecond()),
			},
		})
	}
	return &proto.FoodTemplateList{
		FoodTemplates: foodTemplates,
	}, nil
}
