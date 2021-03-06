# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: uber.proto for package 'uberapi'

require 'grpc'
require 'uber'

module Uberapi
  module UberAPIService

    # TODO: add proto service documentation here
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'uberapi.UberAPIService'

      rpc :GetEstimatesPrice, GetEstimatesPriceRequest, GetEstimatesPriceResponse
      rpc :GetEstimatesTime, GetEstimatesTimeRequest, GetEstimatesTimeResponse
      rpc :GetHistory, GetHistoryRequest, Activities
      rpc :GetMe, Google::Protobuf::Empty, Profile
      rpc :GetProducts, GetProductsRequest, GetProductsResponse
    end

    Stub = Service.rpc_stub_class
  end
end
