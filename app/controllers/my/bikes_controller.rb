class My::BikesController < ApplicationController
  def index
    @bikes = Bike.where(tenant_id: current_user)
  end
end
