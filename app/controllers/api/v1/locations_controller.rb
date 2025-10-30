class Api::V1::LocationsController < ApiController
  before_action :set_location, only: [ :show ]

  def show
    render json: @location, include: [ "recordings" ]
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end
end
