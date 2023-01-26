class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if params[:query].present?
      @spaceships = Spaceship.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @spaceships = Spaceship.all
    end

    @markers = @spaceships.geocoded.map do |spaceship|
      {
        lat: spaceship.latitude,
        lng: spaceship.longitude,
        info_window_html: render_to_string(partial: "spaceships/info_window", locals: {spaceship: spaceship}),
        marker_html: render_to_string(partial: "spaceships/marker", locals: {spaceship: spaceship})
      }
    end

  end
end
