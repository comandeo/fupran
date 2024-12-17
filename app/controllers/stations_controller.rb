# frozen_string_literal: true

class StationsController < ApplicationController
  def index
    @top_stations = Station.limit(10)
  end
end
