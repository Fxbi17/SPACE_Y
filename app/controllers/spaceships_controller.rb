class SpaceshipsController < ApplicationController
  before_action :set_spaceship, only: [:show]

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
