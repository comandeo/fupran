# frozen_string_literal: true

class Station
  include Mongoid::Document
  store_in collection: "Station"

  field :name, type: String
  field :brand, type: String

  embeds_one :address
  embeds_one :location
end
