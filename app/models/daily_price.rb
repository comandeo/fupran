# frozen_string_literal: true

class DailyPrice
  include Mongoid::Document
  store_in collection: "DailyPrice"

  field :closingPrice, as: :closing_price, type: Float
  field :day, type: Date
  field :fuel, type: String
  field :weightedAveragePrice, as: :weighted_average_price, type: Float

  embeds_one :highest_price, inverse_of: :daily_price, store_as: "highestPrice", class_name: "Price"
  embeds_one :lowest_price, inverse_of: :daily_price, store_as: "lowestPrice", class_name: "Price"
  embeds_many :prices, inverse_of: :daily_price, store_as: "prices"

  belongs_to :main_station, class_name: "Station", inverse_of: :daily_prices
end
