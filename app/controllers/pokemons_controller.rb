class PokemonsController < ApplicationController

  def create
    @pokemon = Pokemon.create(pokemon_params)

    redirect_to pokemons_path
  end

  def new
    @pokemon = Pokemon.new
  end


  private

  def pokemon_params
    params.require(:pokemon).permit([:type, :egg, :location, :incense, :lure, :user_lvl, :user_id])
  end

end
