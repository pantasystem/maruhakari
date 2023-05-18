package handler

import (
	"context"
	"core-api/pkg/entity"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"
	"errors"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"gorm.io/gorm"
)

type AccountHandler struct {
	Module module.Module
	proto.UnimplementedAccountServiceServer
}

func (r *AccountHandler) CreateAccount(ctx context.Context, req *proto.CreateAccountRequest) (*proto.CreateAccountResponse, error) {
	a := &entity.Account{
		Username: req.Username,
	}
	a, err := r.Module.RepositoryModule().AccountRepository().Create(ctx, a)

	if err != nil {
		return nil, err
	}

	return &proto.CreateAccountResponse{
		Token: a.Token.String(),
		Account: &proto.Account{
			Id:       a.ID.String(),
			Username: a.Username,
			CreatedAt: &timestamppb.Timestamp{
				Seconds: a.CreatedAt.Unix(),
				Nanos:   int32(a.CreatedAt.Nanosecond()),
			},
			UpdatedAt: &timestamppb.Timestamp{
				Seconds: a.UpdatedAt.Unix(),
				Nanos:   int32(a.UpdatedAt.Nanosecond()),
			},
		},
	}, nil
}

func (r *AccountHandler) Find(ctx context.Context, req *proto.FindUser) (*proto.Account, error) {
	a, err := r.Module.RepositoryModule().AccountRepository().FindByID(ctx, uuid.MustParse(req.Id))
	if err != nil {
		return nil, err
	}
	return &proto.Account{
		Id:       a.ID.String(),
		Username: a.Username,
		CreatedAt: &timestamppb.Timestamp{
			Seconds: a.CreatedAt.Unix(),
			Nanos:   int32(a.CreatedAt.Nanosecond()),
		},
	}, nil
}

func (r *AccountHandler) FindMe(ctx context.Context, req *emptypb.Empty) (*proto.FindMeResponse, error) {
	aId, ok := ctx.Value(AccountId).(string)
	if !ok {
		return &proto.FindMeResponse{
			Account:   nil,
			AuthState: proto.AuthState_UNAUTHENTICATED,
		}, nil
	}
	accountId, err := uuid.Parse(aId)
	if err != nil {
		return nil, err
	}

	a, err := r.Module.RepositoryModule().AccountRepository().FindByID(ctx, accountId)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			return &proto.FindMeResponse{
				Account:   nil,
				AuthState: proto.AuthState_UNAUTHENTICATED,
			}, nil
		}
		return nil, err
	}

	return &proto.FindMeResponse{
		Account: &proto.Account{
			Id:       a.ID.String(),
			Username: a.Username,
			CreatedAt: &timestamppb.Timestamp{
				Seconds: a.CreatedAt.Unix(),
				Nanos:   int32(a.CreatedAt.Nanosecond()),
			},
			UpdatedAt: &timestamppb.Timestamp{
				Seconds: a.UpdatedAt.Unix(),
				Nanos:   int32(a.UpdatedAt.Nanosecond()),
			},
		},
		AuthState: proto.AuthState_AUTHENTICATED,
	}, nil
}
