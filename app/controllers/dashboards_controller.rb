class DashboardsController < ApplicationController

  def show
    @host = current_user.host?
    @trips = current_user.bookings
    if @host
      @my_flats = current_user.flats
      @my_bookings = Booking.where(flat_id: @my_flats.pluck(:id))
    end
  end

end
