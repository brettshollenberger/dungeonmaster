class PetsController < ApplicationController
  def new
    @errors = params[:errors] || nil
    @character = Character.find(params[:character_id])
    @pet = @character.pets.new
  end

  def create
    @character = Character.find(params[:pet][:character_id])
    params[:pet].delete(:character_id)
    @pet = @character.pets.new(params[:pet])

    if @pet.save
      redirect_to character_pet_path(@character, @pet)
    else
      @error = @pet.errors.messages
      redirect_to new_character_pet_path(@character, errors: @error)
    end
  end

  def show
    @character = Character.find(params[:character_id])
    @pet = Pet.find(params[:id])
  end
end
