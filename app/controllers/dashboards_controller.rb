class DashboardsController < ApplicationController


  def my_trips
    @trips = current_user.bookings
  end

  def my_flats
    @host = current_user.host?
    if @host
      @my_flats = current_user.flats
      @my_bookings = Booking.where(flat_id: @my_flats.pluck(:id))
    end
  end

end
