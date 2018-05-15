class BikesController < ApplicationController

  def index
    if params[:search].present?
      address = params[:search][:address]
      @bikes = Bike.where(address: address)
    else
      @bikes = Bike.all
    end
  end


  def show
    @bike = Bike.find(params[:id])
    @bike_rent = BikeRent.new
  end

  def create
    @bike = Bike.new(bike_params)
      if @bike.save
        redirect_to bikes_rents_path
      end
  end

  def update
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :description, :address, :price, :availability, :tenant_id)

  end

end




