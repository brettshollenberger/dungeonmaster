class PetsController < ApplicationController
  def new
    @character = Character.find(params[:character_id])
    @pet = @character.pets.new
  end

  def create
    @character = Character.find(params[:pet][:character_id])
    params[:pet].delete(:character_id)
    @pet = @character.pets.new(params[:pet])

    @pet.save
    redirect_to character_pet_path(@character, @pet)
  end

  def show
    @character = Character.find(params[:character_id])
    @pet = Pet.find(params[:id])
  end
end
