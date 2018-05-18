class BikeRentsController < ApplicationController


  # if current user is a user (renter or tenant) :
  # - form to create a bike
  # - list the rents with validation profile
  # - can update the validation profile

  # when update from the tenant > changing for the renter
  # when update from the renter > changing for the tenant

  def index
    @bike_rents = current_user.bike_rents
  end

  def create
    @bike_rent = BikeRent.new(bike_rents_params)
    @bike_rent.bike = Bike.find(params[:bike_id])
    @bike_rent.renter = current_user

    if @bike_rent.save
      redirect_to bike_rents_path
    else
      render 'bike/show'
    end
  end

 # def update
 #  @bike_rent = BikeRent.find(params[:id])
 #  @bike_rent.update(bike_rent_params)
 # end

 private

 def bike_rents_params
  params.require(:bike_rent).permit(:booking_date)
 end
end
