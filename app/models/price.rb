# frozen_string_literal: true

class Price
  include Mongoid::Document

  field :date, type: DateTime
  field :price, type: Float

  embedded_in :daily_price, inverse_of: :highest_price
  embedded_in :daily_price, inverse_of: :lowest_price
  embedded_in :daily_price, inverse_of: :prices
end
