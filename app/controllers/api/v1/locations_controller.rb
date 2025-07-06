class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show ]

  def show; end

  private

  def set_location
    @location = Location.find(params[:id])
  end
end
