// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.21.12
// source: proto/measurement_history.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type RecordHistoryRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	DeviceToken string  `protobuf:"bytes,1,opt,name=device_token,json=deviceToken,proto3" json:"device_token,omitempty"`
	NfcUid      string  `protobuf:"bytes,2,opt,name=nfc_uid,json=nfcUid,proto3" json:"nfc_uid,omitempty"`
	Weight      float32 `protobuf:"fixed32,3,opt,name=weight,proto3" json:"weight,omitempty"`
}

func (x *RecordHistoryRequest) Reset() {
	*x = RecordHistoryRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_measurement_history_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *RecordHistoryRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*RecordHistoryRequest) ProtoMessage() {}

func (x *RecordHistoryRequest) ProtoReflect() protoreflect.Message {
	mi := &file_proto_measurement_history_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use RecordHistoryRequest.ProtoReflect.Descriptor instead.
func (*RecordHistoryRequest) Descriptor() ([]byte, []int) {
	return file_proto_measurement_history_proto_rawDescGZIP(), []int{0}
}

func (x *RecordHistoryRequest) GetDeviceToken() string {
	if x != nil {
		return x.DeviceToken
	}
	return ""
}

func (x *RecordHistoryRequest) GetNfcUid() string {
	if x != nil {
		return x.NfcUid
	}
	return ""
}

func (x *RecordHistoryRequest) GetWeight() float32 {
	if x != nil {
		return x.Weight
	}
	return 0
}

type MeasurementHistory struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id        int64                  `protobuf:"varint,1,opt,name=id,proto3" json:"id,omitempty"`
	FoodId    string                 `protobuf:"bytes,2,opt,name=food_id,json=foodId,proto3" json:"food_id,omitempty"`
	Weight    float32                `protobuf:"fixed32,3,opt,name=weight,proto3" json:"weight,omitempty"`
	CreatedAt *timestamppb.Timestamp `protobuf:"bytes,7,opt,name=created_at,json=createdAt,proto3" json:"created_at,omitempty"`
}

func (x *MeasurementHistory) Reset() {
	*x = MeasurementHistory{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_measurement_history_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MeasurementHistory) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MeasurementHistory) ProtoMessage() {}

func (x *MeasurementHistory) ProtoReflect() protoreflect.Message {
	mi := &file_proto_measurement_history_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MeasurementHistory.ProtoReflect.Descriptor instead.
func (*MeasurementHistory) Descriptor() ([]byte, []int) {
	return file_proto_measurement_history_proto_rawDescGZIP(), []int{1}
}

func (x *MeasurementHistory) GetId() int64 {
	if x != nil {
		return x.Id
	}
	return 0
}

func (x *MeasurementHistory) GetFoodId() string {
	if x != nil {
		return x.FoodId
	}
	return ""
}

func (x *MeasurementHistory) GetWeight() float32 {
	if x != nil {
		return x.Weight
	}
	return 0
}

func (x *MeasurementHistory) GetCreatedAt() *timestamppb.Timestamp {
	if x != nil {
		return x.CreatedAt
	}
	return nil
}

var File_proto_measurement_history_proto protoreflect.FileDescriptor

var file_proto_measurement_history_proto_rawDesc = []byte{
	0x0a, 0x1f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x6d, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x6d,
	0x65, 0x6e, 0x74, 0x5f, 0x68, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x1a, 0x1f, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62,
	0x75, 0x66, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x22, 0x6a, 0x0a, 0x14, 0x52, 0x65, 0x63, 0x6f, 0x72, 0x64, 0x48, 0x69, 0x73, 0x74,
	0x6f, 0x72, 0x79, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x21, 0x0a, 0x0c, 0x64, 0x65,
	0x76, 0x69, 0x63, 0x65, 0x5f, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x0b, 0x64, 0x65, 0x76, 0x69, 0x63, 0x65, 0x54, 0x6f, 0x6b, 0x65, 0x6e, 0x12, 0x17, 0x0a,
	0x07, 0x6e, 0x66, 0x63, 0x5f, 0x75, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06,
	0x6e, 0x66, 0x63, 0x55, 0x69, 0x64, 0x12, 0x16, 0x0a, 0x06, 0x77, 0x65, 0x69, 0x67, 0x68, 0x74,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x02, 0x52, 0x06, 0x77, 0x65, 0x69, 0x67, 0x68, 0x74, 0x22, 0x90,
	0x01, 0x0a, 0x12, 0x4d, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x6d, 0x65, 0x6e, 0x74, 0x48, 0x69,
	0x73, 0x74, 0x6f, 0x72, 0x79, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x03, 0x52, 0x02, 0x69, 0x64, 0x12, 0x17, 0x0a, 0x07, 0x66, 0x6f, 0x6f, 0x64, 0x5f, 0x69, 0x64,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x66, 0x6f, 0x6f, 0x64, 0x49, 0x64, 0x12, 0x16,
	0x0a, 0x06, 0x77, 0x65, 0x69, 0x67, 0x68, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x02, 0x52, 0x06,
	0x77, 0x65, 0x69, 0x67, 0x68, 0x74, 0x12, 0x39, 0x0a, 0x0a, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65,
	0x64, 0x5f, 0x61, 0x74, 0x18, 0x07, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d,
	0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x09, 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x64, 0x41,
	0x74, 0x32, 0x58, 0x0a, 0x19, 0x4d, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65, 0x6d, 0x65, 0x6e, 0x74,
	0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x3b,
	0x0a, 0x0d, 0x52, 0x65, 0x63, 0x6f, 0x72, 0x64, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x12,
	0x15, 0x2e, 0x52, 0x65, 0x63, 0x6f, 0x72, 0x64, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x1a, 0x13, 0x2e, 0x4d, 0x65, 0x61, 0x73, 0x75, 0x72, 0x65,
	0x6d, 0x65, 0x6e, 0x74, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x42, 0x13, 0x5a, 0x11, 0x70,
	0x6b, 0x67, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_measurement_history_proto_rawDescOnce sync.Once
	file_proto_measurement_history_proto_rawDescData = file_proto_measurement_history_proto_rawDesc
)

func file_proto_measurement_history_proto_rawDescGZIP() []byte {
	file_proto_measurement_history_proto_rawDescOnce.Do(func() {
		file_proto_measurement_history_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_measurement_history_proto_rawDescData)
	})
	return file_proto_measurement_history_proto_rawDescData
}

var file_proto_measurement_history_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_proto_measurement_history_proto_goTypes = []interface{}{
	(*RecordHistoryRequest)(nil),  // 0: RecordHistoryRequest
	(*MeasurementHistory)(nil),    // 1: MeasurementHistory
	(*timestamppb.Timestamp)(nil), // 2: google.protobuf.Timestamp
}
var file_proto_measurement_history_proto_depIdxs = []int32{
	2, // 0: MeasurementHistory.created_at:type_name -> google.protobuf.Timestamp
	0, // 1: MeasurementHistoryService.RecordHistory:input_type -> RecordHistoryRequest
	1, // 2: MeasurementHistoryService.RecordHistory:output_type -> MeasurementHistory
	2, // [2:3] is the sub-list for method output_type
	1, // [1:2] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_proto_measurement_history_proto_init() }
func file_proto_measurement_history_proto_init() {
	if File_proto_measurement_history_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_measurement_history_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*RecordHistoryRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_proto_measurement_history_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MeasurementHistory); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_proto_measurement_history_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_measurement_history_proto_goTypes,
		DependencyIndexes: file_proto_measurement_history_proto_depIdxs,
		MessageInfos:      file_proto_measurement_history_proto_msgTypes,
	}.Build()
	File_proto_measurement_history_proto = out.File
	file_proto_measurement_history_proto_rawDesc = nil
	file_proto_measurement_history_proto_goTypes = nil
	file_proto_measurement_history_proto_depIdxs = nil
}
