#import "Uber.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#import "google/protobuf/Empty.pbobjc.h"
#import "google/api/Annotations.pbobjc.h"


NS_ASSUME_NONNULL_BEGIN

@protocol UberAPIService <NSObject>

#pragma mark GetEstimatesPrice(GetEstimatesPriceRequest) returns (GetEstimatesPriceResponse)

- (void)getEstimatesPriceWithRequest:(GetEstimatesPriceRequest *)request handler:(void(^)(GetEstimatesPriceResponse *_Nullable response, NSError *_Nullable error))handler;

- (ProtoRPC *)RPCToGetEstimatesPriceWithRequest:(GetEstimatesPriceRequest *)request handler:(void(^)(GetEstimatesPriceResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetEstimatesTime(GetEstimatesTimeRequest) returns (GetEstimatesTimeResponse)

- (void)getEstimatesTimeWithRequest:(GetEstimatesTimeRequest *)request handler:(void(^)(GetEstimatesTimeResponse *_Nullable response, NSError *_Nullable error))handler;

- (ProtoRPC *)RPCToGetEstimatesTimeWithRequest:(GetEstimatesTimeRequest *)request handler:(void(^)(GetEstimatesTimeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetHistory(GetHistoryRequest) returns (Activities)

- (void)getHistoryWithRequest:(GetHistoryRequest *)request handler:(void(^)(Activities *_Nullable response, NSError *_Nullable error))handler;

- (ProtoRPC *)RPCToGetHistoryWithRequest:(GetHistoryRequest *)request handler:(void(^)(Activities *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetMe(Empty) returns (Profile)

- (void)getMeWithRequest:(GPBEmpty *)request handler:(void(^)(Profile *_Nullable response, NSError *_Nullable error))handler;

- (ProtoRPC *)RPCToGetMeWithRequest:(GPBEmpty *)request handler:(void(^)(Profile *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetProducts(GetProductsRequest) returns (GetProductsResponse)

- (void)getProductsWithRequest:(GetProductsRequest *)request handler:(void(^)(GetProductsResponse *_Nullable response, NSError *_Nullable error))handler;

- (ProtoRPC *)RPCToGetProductsWithRequest:(GetProductsRequest *)request handler:(void(^)(GetProductsResponse *_Nullable response, NSError *_Nullable error))handler;


@end

// Basic service implementation, over gRPC, that only does marshalling and parsing.
@interface UberAPIService : ProtoService<UberAPIService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
