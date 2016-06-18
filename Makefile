all:
	openapi2proto -options -spec uber.openapi.yaml > uber.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src/github.com \
		-I${GOPATH}/src/github.com/gengo/grpc-gateway/third_party/googleapis \
		--go_out=Mgoogle/api/annotations.proto=github.com/gengo/grpc-gateway/third_party/googleapis/google/api,plugins=grpc:uberapi \
		--elmtypes_out=uberapi \
		--flowtypes_out=uberapi \
		--grpc-gateway_out=logtostderr=true:uberapi \
		--swagger_out=logtostderr=true:. \
		uber.proto
