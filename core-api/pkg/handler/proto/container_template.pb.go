// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.26.0
// 	protoc        v3.21.12
// source: proto/container_template.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type ContainerTemplate struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id                     string  `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Label                  string  `protobuf:"bytes,3,opt,name=label,proto3" json:"label,omitempty"`
	ImageUrl               string  `protobuf:"bytes,2,opt,name=image_url,json=imageUrl,proto3" json:"image_url,omitempty"`
	ContainerWeightGram    float32 `protobuf:"fixed32,4,opt,name=container_weight_gram,json=containerWeightGram,proto3" json:"container_weight_gram,omitempty"`
	ContainerMaxWeightGram float32 `protobuf:"fixed32,5,opt,name=container_max_weight_gram,json=containerMaxWeightGram,proto3" json:"container_max_weight_gram,omitempty"`
}

func (x *ContainerTemplate) Reset() {
	*x = ContainerTemplate{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_container_template_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ContainerTemplate) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ContainerTemplate) ProtoMessage() {}

func (x *ContainerTemplate) ProtoReflect() protoreflect.Message {
	mi := &file_proto_container_template_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ContainerTemplate.ProtoReflect.Descriptor instead.
func (*ContainerTemplate) Descriptor() ([]byte, []int) {
	return file_proto_container_template_proto_rawDescGZIP(), []int{0}
}

func (x *ContainerTemplate) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *ContainerTemplate) GetLabel() string {
	if x != nil {
		return x.Label
	}
	return ""
}

func (x *ContainerTemplate) GetImageUrl() string {
	if x != nil {
		return x.ImageUrl
	}
	return ""
}

func (x *ContainerTemplate) GetContainerWeightGram() float32 {
	if x != nil {
		return x.ContainerWeightGram
	}
	return 0
}

func (x *ContainerTemplate) GetContainerMaxWeightGram() float32 {
	if x != nil {
		return x.ContainerMaxWeightGram
	}
	return 0
}

type ContainerTemplateList struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ContainerTemplates []*ContainerTemplate `protobuf:"bytes,1,rep,name=container_templates,json=containerTemplates,proto3" json:"container_templates,omitempty"`
}

func (x *ContainerTemplateList) Reset() {
	*x = ContainerTemplateList{}
	if protoimpl.UnsafeEnabled {
		mi := &file_proto_container_template_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ContainerTemplateList) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ContainerTemplateList) ProtoMessage() {}

func (x *ContainerTemplateList) ProtoReflect() protoreflect.Message {
	mi := &file_proto_container_template_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ContainerTemplateList.ProtoReflect.Descriptor instead.
func (*ContainerTemplateList) Descriptor() ([]byte, []int) {
	return file_proto_container_template_proto_rawDescGZIP(), []int{1}
}

func (x *ContainerTemplateList) GetContainerTemplates() []*ContainerTemplate {
	if x != nil {
		return x.ContainerTemplates
	}
	return nil
}

var File_proto_container_template_proto protoreflect.FileDescriptor

var file_proto_container_template_proto_rawDesc = []byte{
	0x0a, 0x1e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x2f, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65,
	0x72, 0x5f, 0x74, 0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x1a, 0x1b, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75,
	0x66, 0x2f, 0x65, 0x6d, 0x70, 0x74, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xc5, 0x01,
	0x0a, 0x11, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x54, 0x65, 0x6d, 0x70, 0x6c,
	0x61, 0x74, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x02, 0x69, 0x64, 0x12, 0x14, 0x0a, 0x05, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x05, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x12, 0x1b, 0x0a, 0x09, 0x69, 0x6d, 0x61,
	0x67, 0x65, 0x5f, 0x75, 0x72, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x69, 0x6d,
	0x61, 0x67, 0x65, 0x55, 0x72, 0x6c, 0x12, 0x32, 0x0a, 0x15, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x69,
	0x6e, 0x65, 0x72, 0x5f, 0x77, 0x65, 0x69, 0x67, 0x68, 0x74, 0x5f, 0x67, 0x72, 0x61, 0x6d, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x02, 0x52, 0x13, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72,
	0x57, 0x65, 0x69, 0x67, 0x68, 0x74, 0x47, 0x72, 0x61, 0x6d, 0x12, 0x39, 0x0a, 0x19, 0x63, 0x6f,
	0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x5f, 0x6d, 0x61, 0x78, 0x5f, 0x77, 0x65, 0x69, 0x67,
	0x68, 0x74, 0x5f, 0x67, 0x72, 0x61, 0x6d, 0x18, 0x05, 0x20, 0x01, 0x28, 0x02, 0x52, 0x16, 0x63,
	0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x4d, 0x61, 0x78, 0x57, 0x65, 0x69, 0x67, 0x68,
	0x74, 0x47, 0x72, 0x61, 0x6d, 0x22, 0x5c, 0x0a, 0x15, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e,
	0x65, 0x72, 0x54, 0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x12, 0x43,
	0x0a, 0x13, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x5f, 0x74, 0x65, 0x6d, 0x70,
	0x6c, 0x61, 0x74, 0x65, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x12, 0x2e, 0x43, 0x6f,
	0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x54, 0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x52,
	0x12, 0x63, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x54, 0x65, 0x6d, 0x70, 0x6c, 0x61,
	0x74, 0x65, 0x73, 0x32, 0x68, 0x0a, 0x18, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72,
	0x54, 0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12,
	0x4c, 0x0a, 0x18, 0x47, 0x65, 0x74, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x54,
	0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x12, 0x16, 0x2e, 0x67, 0x6f,
	0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x45, 0x6d,
	0x70, 0x74, 0x79, 0x1a, 0x16, 0x2e, 0x43, 0x6f, 0x6e, 0x74, 0x61, 0x69, 0x6e, 0x65, 0x72, 0x54,
	0x65, 0x6d, 0x70, 0x6c, 0x61, 0x74, 0x65, 0x4c, 0x69, 0x73, 0x74, 0x22, 0x00, 0x42, 0x13, 0x5a,
	0x11, 0x70, 0x6b, 0x67, 0x2f, 0x73, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_proto_container_template_proto_rawDescOnce sync.Once
	file_proto_container_template_proto_rawDescData = file_proto_container_template_proto_rawDesc
)

func file_proto_container_template_proto_rawDescGZIP() []byte {
	file_proto_container_template_proto_rawDescOnce.Do(func() {
		file_proto_container_template_proto_rawDescData = protoimpl.X.CompressGZIP(file_proto_container_template_proto_rawDescData)
	})
	return file_proto_container_template_proto_rawDescData
}

var file_proto_container_template_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_proto_container_template_proto_goTypes = []interface{}{
	(*ContainerTemplate)(nil),     // 0: ContainerTemplate
	(*ContainerTemplateList)(nil), // 1: ContainerTemplateList
	(*emptypb.Empty)(nil),         // 2: google.protobuf.Empty
}
var file_proto_container_template_proto_depIdxs = []int32{
	0, // 0: ContainerTemplateList.container_templates:type_name -> ContainerTemplate
	2, // 1: ContainerTemplateService.GetContainerTemplateList:input_type -> google.protobuf.Empty
	1, // 2: ContainerTemplateService.GetContainerTemplateList:output_type -> ContainerTemplateList
	2, // [2:3] is the sub-list for method output_type
	1, // [1:2] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_proto_container_template_proto_init() }
func file_proto_container_template_proto_init() {
	if File_proto_container_template_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_proto_container_template_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ContainerTemplate); i {
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
		file_proto_container_template_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ContainerTemplateList); i {
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
			RawDescriptor: file_proto_container_template_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_proto_container_template_proto_goTypes,
		DependencyIndexes: file_proto_container_template_proto_depIdxs,
		MessageInfos:      file_proto_container_template_proto_msgTypes,
	}.Build()
	File_proto_container_template_proto = out.File
	file_proto_container_template_proto_rawDesc = nil
	file_proto_container_template_proto_goTypes = nil
	file_proto_container_template_proto_depIdxs = nil
}
