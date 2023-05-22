package handler

import (
	"context"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"

	"google.golang.org/protobuf/types/known/emptypb"
)

type ContainerTemplateHandler struct {
	Module module.Module
	proto.UnimplementedContainerTemplateServiceServer
}

func (r *ContainerTemplateHandler) CreateContainerTemplate(ctx context.Context, empty *emptypb.Empty) (*proto.ContainerTemplateList, error) {
	templates, err := r.Module.RepositoryModule().ContainerTemplateRepository().FindAll(ctx)
	if err != nil {
		return nil, err
	}
	var containerTemplates []*proto.ContainerTemplate
	for _, template := range templates {
		containerTemplates = append(containerTemplates, &proto.ContainerTemplate{
			Id:                     template.ID.String(),
			Label:                  template.Label,
			ImageUrl:               template.ImagePath,
			ContainerWeightGram:    template.ContainerWeightGram,
			ContainerMaxWeightGram: template.ContainerMaxWeightGram,
		})
	}
	return &proto.ContainerTemplateList{
		ContainerTemplates: containerTemplates,
	}, nil
}
