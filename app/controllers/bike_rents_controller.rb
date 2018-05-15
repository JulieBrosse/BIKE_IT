class BikeRentsController < ApplicationRecord

 def index
  @bikes_rents = Bike.where(current_user_id == renter_id)
 end

 def create
  @bike_rent = BikeRent.find(params[:id])
  @bike_rent.save
 end

 def update
  @bike_rent = BikeRent.find(params[:id])
  @bike_rent.update(bike_rent_params)
 end

 private

 def bikes_rent_params
  params.require(:bike).permit(:date, :renter_id, :bike_id)
 end
end
