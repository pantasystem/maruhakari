gg:
	export PATH="$PATH:$(go env GOPATH)/bin"
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/account.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/container_template.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/device.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/food_template.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/food.proto
	protoc --go_out=./core-api/pkg/handler --go_opt=paths=source_relative --go-grpc_out=./core-api/pkg/handler --go-grpc_opt=paths=source_relative ./proto/measurement_history.proto