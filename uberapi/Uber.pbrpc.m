#import "Uber.pbrpc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

static NSString *const kPackageName = @"uberapi";
static NSString *const kServiceName = @"UberAPIService";

@implementation UberAPIService

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:kPackageName serviceName:kServiceName]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark GetEstimatesPrice(GetEstimatesPriceRequest) returns (GetEstimatesPriceResponse)

- (void)getEstimatesPriceWithRequest:(GetEstimatesPriceRequest *)request handler:(void(^)(GetEstimatesPriceResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetEstimatesPriceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetEstimatesPriceWithRequest:(GetEstimatesPriceRequest *)request handler:(void(^)(GetEstimatesPriceResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetEstimatesPrice"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetEstimatesPriceResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetEstimatesTime(GetEstimatesTimeRequest) returns (GetEstimatesTimeResponse)

- (void)getEstimatesTimeWithRequest:(GetEstimatesTimeRequest *)request handler:(void(^)(GetEstimatesTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetEstimatesTimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetEstimatesTimeWithRequest:(GetEstimatesTimeRequest *)request handler:(void(^)(GetEstimatesTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetEstimatesTime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetEstimatesTimeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetHistory(GetHistoryRequest) returns (Activities)

- (void)getHistoryWithRequest:(GetHistoryRequest *)request handler:(void(^)(Activities *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetHistoryWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetHistoryWithRequest:(GetHistoryRequest *)request handler:(void(^)(Activities *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetHistory"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Activities class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMe(Empty) returns (Profile)

- (void)getMeWithRequest:(GPBEmpty *)request handler:(void(^)(Profile *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetMeWithRequest:(GPBEmpty *)request handler:(void(^)(Profile *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMe"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Profile class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetProducts(GetProductsRequest) returns (GetProductsResponse)

- (void)getProductsWithRequest:(GetProductsRequest *)request handler:(void(^)(GetProductsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetProductsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (ProtoRPC *)RPCToGetProductsWithRequest:(GetProductsRequest *)request handler:(void(^)(GetProductsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetProducts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetProductsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
