// Code generated by protoc-gen-go-grpc. DO NOT EDIT.

package proto

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// FoodTemplateServiceClient is the client API for FoodTemplateService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type FoodTemplateServiceClient interface {
	GetFoodTemplateList(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*FoodTemplateList, error)
}

type foodTemplateServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewFoodTemplateServiceClient(cc grpc.ClientConnInterface) FoodTemplateServiceClient {
	return &foodTemplateServiceClient{cc}
}

func (c *foodTemplateServiceClient) GetFoodTemplateList(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*FoodTemplateList, error) {
	out := new(FoodTemplateList)
	err := c.cc.Invoke(ctx, "/FoodTemplateService/GetFoodTemplateList", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// FoodTemplateServiceServer is the server API for FoodTemplateService service.
// All implementations must embed UnimplementedFoodTemplateServiceServer
// for forward compatibility
type FoodTemplateServiceServer interface {
	GetFoodTemplateList(context.Context, *emptypb.Empty) (*FoodTemplateList, error)
	mustEmbedUnimplementedFoodTemplateServiceServer()
}

// UnimplementedFoodTemplateServiceServer must be embedded to have forward compatible implementations.
type UnimplementedFoodTemplateServiceServer struct {
}

func (UnimplementedFoodTemplateServiceServer) GetFoodTemplateList(context.Context, *emptypb.Empty) (*FoodTemplateList, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetFoodTemplateList not implemented")
}
func (UnimplementedFoodTemplateServiceServer) mustEmbedUnimplementedFoodTemplateServiceServer() {}

// UnsafeFoodTemplateServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to FoodTemplateServiceServer will
// result in compilation errors.
type UnsafeFoodTemplateServiceServer interface {
	mustEmbedUnimplementedFoodTemplateServiceServer()
}

func RegisterFoodTemplateServiceServer(s grpc.ServiceRegistrar, srv FoodTemplateServiceServer) {
	s.RegisterService(&FoodTemplateService_ServiceDesc, srv)
}

func _FoodTemplateService_GetFoodTemplateList_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(emptypb.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(FoodTemplateServiceServer).GetFoodTemplateList(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/FoodTemplateService/GetFoodTemplateList",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(FoodTemplateServiceServer).GetFoodTemplateList(ctx, req.(*emptypb.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

// FoodTemplateService_ServiceDesc is the grpc.ServiceDesc for FoodTemplateService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var FoodTemplateService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "FoodTemplateService",
	HandlerType: (*FoodTemplateServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "GetFoodTemplateList",
			Handler:    _FoodTemplateService_GetFoodTemplateList_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "proto/food_template.proto",
}
