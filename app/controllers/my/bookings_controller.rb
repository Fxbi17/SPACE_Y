class My::BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
