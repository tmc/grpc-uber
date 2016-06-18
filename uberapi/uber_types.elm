-- this is a generated file
type alias GetEstimatesPriceRequest = {
  end_latitude: Maybe Float,
  end_longitude: Maybe Float,
  start_latitude: Maybe Float,
  start_longitude: Maybe Float
}

type alias GetEstimatesPriceResponse = {
  items: Maybe List PriceEstimate
}

type alias GetEstimatesTimeRequest = {
  customer_uuid: Maybe String,
  product_id: Maybe String,
  start_latitude: Maybe Float,
  start_longitude: Maybe Float
}

type alias GetEstimatesTimeResponse = {
  items: Maybe List Product
}

type alias GetHistoryRequest = {
  limit: Maybe Int,
  offset: Maybe Int
}

type alias GetProductsRequest = {
  latitude: Maybe Float,
  longitude: Maybe Float
}

type alias GetProductsResponse = {
  items: Maybe List Product
}

type alias Activities = {
  count: Maybe Int,
  history: Maybe List Activity,
  limit: Maybe Int,
  offset: Maybe Int
}

type alias Activity = {
  uuid: Maybe String
}

type alias Error = {
  code: Maybe Int,
  fields: Maybe String,
  message: Maybe String
}

type alias PriceEstimate = {
  currency_code: Maybe String,
  display_name: Maybe String,
  estimate: Maybe String,
  high_estimate: Maybe Int,
  low_estimate: Maybe Int,
  product_id: Maybe String,
  surge_multiplier: Maybe Int
}

type alias Product = {
  capacity: Maybe String,
  description: Maybe String,
  display_name: Maybe String,
  image: Maybe String,
  product_id: Maybe String
}

type alias Profile = {
  email: Maybe String,
  first_name: Maybe String,
  last_name: Maybe String,
  picture: Maybe String,
  promo_code: Maybe String
}

