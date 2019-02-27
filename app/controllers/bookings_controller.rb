class BookingsController < ApplicationController

  def index
    @bookings = Booking.all

  end

  def new
    @chef = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_guests, :dietary_requirements)
  end
end
