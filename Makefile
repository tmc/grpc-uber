all:
	openapi2proto -options -spec uber.openapi.yaml > uber.proto
