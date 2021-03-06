class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @flat = Flat.find(params[:flat_id])
    @bookings = Booking.where(flat_id: params[:flat_id])
  end

  def show
    @flat = Flat.find(params[:flat_id])
    # REVIEW FORM
    @review = Review.new
    # CRYPTO PAYMENT
    @address = "1Chain4asCYNnLVbvG6pgCLGBrtzh4Lx4b"
    url = "https://api-r.bitcoinchain.com/v1/address/utxo/#{@address}"
    # response = RestClient.get(url)
    # @data = JSON.parse(response)
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    @price = 0
  end

  def create

    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)

    @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @flat.price #saving price
    @booking.flat = @flat
    @booking.user = current_user

    if @booking.save
      redirect_to flat_booking_path(@flat, @booking)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:flat_id])
  end

  def update
    @flat = Flat.find(params[:flat_id])
    @booking.update(booking_params)
    @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @flat.price #saving price
    @booking.save
    redirect_to flat_booking_path(@flat, @booking)
  end

  def destroy
    @flat = Flat.find(params[:flat_id])
    @booking.destroy
    redirect_to flat_path(@flat)
  end

  # def change_status
  #   @flat = Flat.find(params[:flat_id])
  #   @booking = @flat.booking


  #   # _approve

  #   # @booking.status = "Approved"
  #   # @booking.save
  #   # redirect_to my_flats_path
  # end
  def change_status_approve
    @booking = Booking.find(params[:id])
    @booking.status = "Approved"
    @booking.save
    redirect_to my_flats_path
  end

  def change_status_decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to my_flats_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
