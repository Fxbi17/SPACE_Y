class BookingsController < ApplicationController
  before_action :set_spaceship, only: [:new, :create]


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    if @booking.save!
      redirect_to my_bookings_path
    else
    render :new
    end
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def params_booking
    params.require(:booking).permit(:startbook_time, :endbook_time)
  end
end
