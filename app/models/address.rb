# frozen_string_literal: true

class Address
  include Mongoid::Document

  field :street, type: String
  field :houseNumber, as: :house_number, type: String
  field :postCode, as: :post_code, type: String
  field :city, type: String

  embedded_in :station
  field :_id, type: Object
end
