class ReviewsController < ApplicationController
  # def new
  #   @booking = Booking.find(params[:booking_id])
  #   @review = Review.new
  # end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to flat_booking_path(@flat, @booking)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
