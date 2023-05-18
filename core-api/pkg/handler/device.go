package handler

import (
	"core-api/pkg/handler/proto"
	"core-api/pkg/module"
)

type DeviceHandler struct {
	proto.UnimplementedDeviceServiceServer
	Module module.Module
}
