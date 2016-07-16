class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)

    redirect_to pokemons_path
  end

  def new
    @pokemon = Pokemon.new
  end


  private

  def pokemon_params
    params.require(:pokemon).permit([:species, :egg, :location, :incense, :lure, :user_lvl, :user_id])
  end

end
