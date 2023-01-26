class SpaceshipsController < ApplicationController
  before_action :set_spaceship, only: [:show]

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new
    end
  end

  def edit
    @spaceship = Spaceship.find(params[:id])
  end

  def update
    @spaceship = Spaceship.find(params[:id])
    @spaceship.update(spaceship_params)
    redirect_to spaceship_path(@spaceship)
  end

  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy
    redirect_to root_path
  end

  def show
    set_spaceship
    @booking = Booking.new
    @markers = [
      {
        lat: @spaceship.latitude,
        lng: @spaceship.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {spaceship: @spaceship}),
        marker_html: render_to_string(partial: "marker", locals: {spaceship: @spaceship})
      }
    ]
  end


  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

  def spaceship_params
    # j'ai ajouter 'image' au params. Ne pas oublier de l'enlever si inutile
    params.require(:spaceship).permit(:name, :description, :price, :image, :address)
  end
end
