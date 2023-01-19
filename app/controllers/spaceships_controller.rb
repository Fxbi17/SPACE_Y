class SpaceshipsController < ApplicationController
  before_action :set_spaceship, only: [:show]

  def show
    set_spaceship
  end

  private

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

  def spaceship_params
    params.require(:spaceship).permit(:name, :description, :price)
  end
end
