class My::SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.where(user: current_user).order(created_at: :desc)
  end
end
