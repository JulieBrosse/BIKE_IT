class BikesController < ApplicationController

  def index
    if params[:search][:address].present?
      @bikes = Bike.near(params["search"]["address"], 20)
    else
      @bikes = Bike.all
    end

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude#,
      }
    end
  end

  def new
    @bike = Bike.new
  end

  def show
    @bike = Bike.find(params[:id])
    @bike_rent = BikeRent.new
  end

  def create
    @bike = Bike.new(bike_params)
      if @bike.save
        redirect_to bike_rents_path
      # else
      #   render "New"
      end
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :price, :availability, :picture, :tenant_id)
  end

end




