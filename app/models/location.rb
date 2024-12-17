# frozen_string_literal: true

class Location
  include Mongoid::Document

  field :coordinates, type: Array

  embedded_in :station
  field :_id, type: Object
end
