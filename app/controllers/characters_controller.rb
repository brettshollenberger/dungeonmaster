class CharactersController < ApplicationController
  before_filter :authenticate_user!

  def new
    @character = current_user.characters.new
  end

  def create
    @class = CharacterClass.where(name: params[:character][:character_class].capitalize).first
    params[:character].delete(:character_class)
    @character = current_user.characters.new(params[:character])
    @character.character_class = @class

    if @character.save
      redirect_to @character
    else
      redirect_to new_character_path
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def index
    @characters = Character.all
  end

  def edit
  end

  def update
  end

  def destroy
    @character = Character.find(params[:id])
    @character.delete
    @notice = "Character successfully banished from your clan."
    redirect_to characters_path
  end
end
