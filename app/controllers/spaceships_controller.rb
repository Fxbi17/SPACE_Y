class SpaceshipsController < ApplicationController
  before_action :set_spaceship, only: [:new, :create]

  def index
    @spaceships = Spaceship.all
  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(params_spaceship)
    @sapceship.booking = @booking
    @spaceship.user = current_user
    if @spaceship.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def params_spaceship
    params.require(:spaceship).permit(:name, :description, :price)
  end
end
