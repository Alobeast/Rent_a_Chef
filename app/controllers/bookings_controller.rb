class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @bookings = Booking.where("customer_id = ? OR chef_id = ?", current_user.id,current_user.id)
  end

  def new
    @chef = User.find(params[:user_id])
    @booking = Booking.new
    @booking.chef = @chef
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    @booking.save
    redirect_to bookings_path
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
    params.require(:booking).permit(:number_of_guests, :dietary_requirements, :chef_id)
  end
end
