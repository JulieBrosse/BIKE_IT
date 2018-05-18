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
    @bike_rent = BikeRent.new(bike_rents_params)
    @bike_rent.save
    redirect_to bike_rents_path
  end

 # def update
 #  @bike_rent = BikeRent.find(params[:id])
 #  @bike_rent.update(bike_rent_params)
 # end

 private

 def bike_rents_params
  params.require(:bike_rent).permit(:booking_date, :renter_id, :bike_id)
 end
end
