class My::BikeRentsController < ApplicationController
  def index
    @bikes_rented = BikeRent.includes(:bike).where(bike: current_user.bikes)
  end
end
