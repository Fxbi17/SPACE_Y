class BookingsController < ApplicationController
  before_action :set_spaceship, only: [:new, :create]

  def show
    @booking = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    if @booking.save!
      redirect_to root_path
    else
    render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def params_booking
    params.require(:booking).permit(:startbook_time, :endbook_time)
  end
end
