gg:
	export PATH="$PATH:$(go env GOPATH)/bin"
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/account.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/container_template.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/device.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/food_template.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/food.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/measurement_history.proto

gd:
	export PATH="$PATH:$(go env GOPATH)/bin"
	protoc --go_out=./device-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./device-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/account.proto
	protoc --go_out=./device-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./device-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/container_template.proto
	protoc --go_out=./device-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./device-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/device.proto
	protoc --go_out=./device-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./device-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/food_template.proto
	protoc --go_out=./device-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./device-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/food.proto
	protoc --go_out=./device-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./device-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/measurement_history.proto


fg:
	export PATH="$PATH:$HOME/.pub-cache/bin"
	protoc --dart_out=grpc:client/lib/generated ./proto/account.proto
	protoc --dart_out=grpc:client/lib/generated ./proto/container_template.proto
	protoc --dart_out=grpc:client/lib/generated ./proto/device.proto
	protoc --dart_out=grpc:client/lib/generated ./proto/food_template.proto
	protoc --dart_out=grpc:client/lib/generated ./proto/food.proto
	protoc --dart_out=grpc:client/lib/generated ./proto/measurement_history.proto
	protoc --dart_out=grpc:client/lib/generated google/protobuf/timestamp.proto
	protoc --dart_out=grpc:client/lib/generated google/protobuf/empty.proto 
