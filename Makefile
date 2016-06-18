all:
	openapi2proto -options -spec uber.openapi.yaml > uber.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src/github.com \
		-I${GOPATH}/src/github.com/gengo/grpc-gateway/third_party/googleapis \
		--go_out=Mgoogle/api/annotations.proto=github.com/gengo/grpc-gateway/third_party/googleapis/google/api,plugins=grpc:uberapi \
		--grpc-gateway_out=logtostderr=true:uberapi \
		--swagger_out=logtostderr=true:. \
		uber.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src/github.com \
		-I${GOPATH}/src/github.com/gengo/grpc-gateway/third_party/googleapis \
		--ruby_out=uberapi/lib --grpc_out=uberapi/lib --plugin=protoc-gen-grpc=/usr/local/bin/grpc_ruby_plugin \
		--objc_out=uberapi --objcgrpc_out=uberapi \
		uber.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src/github.com \
		-I${GOPATH}/src/github.com/gengo/grpc-gateway/third_party/googleapis \
		--python_out=uberapi/py --grpc_out=uberapi/py --plugin=protoc-gen-grpc=/usr/local/bin/grpc_python_plugin \
		--elmtypes_out=uberapi \
		--flowtypes_out=uberapi \
		uber.proto
