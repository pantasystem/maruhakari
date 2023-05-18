package handler

import (
	"context"
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"
	"fmt"

	grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
	grpc_auth "github.com/grpc-ecosystem/go-grpc-middleware/auth"
	"google.golang.org/grpc"
)

type Key int

const (
	AccountId Key = iota
)

func Setup(m module.Module) *grpc.Server {
	s := grpc.NewServer(
		grpc.UnaryInterceptor(
			grpc_middleware.ChainUnaryServer(
				NewAuthInterceptor(m),
			),
		),
	)
	accountHandler := &AccountHandler{
		Module: m,
	}
	containerTemplateHandler := &ContainerTemplateHandler{
		Module: m,
	}
	foodTemplateHandler := &FoodTemplateHandler{
		Module: m,
	}
	foodHandler := &FoodHandler{
		Module: m,
	}
	proto.RegisterAccountServiceServer(s, accountHandler)
	proto.RegisterContainerTemplateServiceServer(s, containerTemplateHandler)
	proto.RegisterFoodTemplateServiceServer(s, foodTemplateHandler)
	proto.RegisterFoodServiceServer(s, foodHandler)

	return s
}

func NewAuthInterceptor(c module.Module) func(ctx context.Context,
	req interface{},
	info *grpc.UnaryServerInfo,
	handler grpc.UnaryHandler,
) (interface{}, error) {
	return func(ctx context.Context,
		req interface{},
		info *grpc.UnaryServerInfo,
		handler grpc.UnaryHandler,
	) (interface{}, error) {
		fmt.Printf("info.FullMethod: %v\n", info.FullMethod)
		// 認証をスキップするパス
		if info.FullMethod == "/AccountService/CreateAccount" {
			return handler(ctx, req)
		} else {
			// 認証がOKならContextを返す
			userIdSetCtx, err := authorize(c, ctx)
			if err != nil {
				if info.FullMethod == "/AccountService/FindMe" {
					return handler(ctx, req)
				}
				return nil, err
			}
			return handler(userIdSetCtx, req)
		}
	}

}

func authorize(module module.Module, ctx context.Context) (context.Context, error) {
	// ヘッダーのトークンからユーザIDを取得
	token, err := grpc_auth.AuthFromMD(ctx, "Bearer")
	if err != nil {
		return nil, err
	}
	// jwtのトークンを検証してaccountを取得（処理の記載は割愛）
	account, err := module.RepositoryModule().AccountRepository().FindByToken(ctx, token)
	if err != nil {
		return nil, err
	}

	return context.WithValue(ctx, AccountId, account.ID.String()), nil
}
