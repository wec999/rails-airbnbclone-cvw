class DashboardsController < ApplicationController
  before_action :host?

  def host?
    @host = current_user.flats.any?
  end

  def show
    @trips = current_user.bookings
    if @host
      @my_flats = current_user.flats
      @my_bookings = Booking.where(flat_id: @my_flats.pluck(:id))
    end
  end

end
