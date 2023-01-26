class My::BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user).order(created_at: :desc)
  end
end
