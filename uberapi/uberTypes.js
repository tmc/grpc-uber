/* @flow */
export type GetEstimatesPriceRequest = {
  end_latitude?: number,
  end_longitude?: number,
  start_latitude?: number,
  start_longitude?: number
};

export type GetEstimatesPriceResponse = {
  items?: Array<PriceEstimate>
};

export type GetEstimatesTimeRequest = {
  customer_uuid?: string,
  product_id?: string,
  start_latitude?: number,
  start_longitude?: number
};

export type GetEstimatesTimeResponse = {
  items?: Array<Product>
};

export type GetHistoryRequest = {
  limit?: number,
  offset?: number
};

export type GetProductsRequest = {
  latitude?: number,
  longitude?: number
};

export type GetProductsResponse = {
  items?: Array<Product>
};

export type Activities = {
  count?: number,
  history?: Array<Activity>,
  limit?: number,
  offset?: number
};

export type Activity = {
  uuid?: string
};

export type Error = {
  code?: number,
  fields?: string,
  message?: string
};

export type PriceEstimate = {
  currency_code?: string,
  display_name?: string,
  estimate?: string,
  high_estimate?: number,
  low_estimate?: number,
  product_id?: string,
  surge_multiplier?: number
};

export type Product = {
  capacity?: string,
  description?: string,
  display_name?: string,
  image?: string,
  product_id?: string
};

export type Profile = {
  email?: string,
  first_name?: string,
  last_name?: string,
  picture?: string,
  promo_code?: string
};

