class BikeRentsController < ApplicationController


  # if current user is a user (renter or tenant) :
  # - form to create a bike
  # - list the rents with validation profile
  # - can update the validation profile

  # when update from the tenant > changing for the renter
  # when update from the renter > changing for the tenant

  def index
    @bike_rents = current_user.bike_rents
    @bikes_rented = BikeRent.includes(:bike).where(bike: current_user.bikes)
  end

  def create
    @bike_rent = BikeRent.find(params[:id])
    @bike_rent.save
  end

 # def update
 #  @bike_rent = BikeRent.find(params[:id])
 #  @bike_rent.update(bike_rent_params)
 # end

 # private

 # def bikes_rent_params
 #  params.require(:bike).permit(:date, :renter_id, :bike_id)
 # end
end
