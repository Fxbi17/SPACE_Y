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
    # j'ai ajouter 'image' au params. Ne pas oublier de l'enlever si inutile
    params.require(:spaceship).permit(:name, :description, :price, :image)
  end
end
