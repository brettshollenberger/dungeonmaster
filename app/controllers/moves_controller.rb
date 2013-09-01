class MovesController < ApplicationController
  def new
    @move = Move.new
  end

  def create
    @id = CharacterClass.where(name: params[:move][:character_class_id].capitalize).first.id
    params[:move].delete(:character_class_id)

    @move = Move.new(params[:move])
    @move.character_class_id = @id

    if @move.save
      redirect_to @move
    else
      redirect_to new_move_path
    end
  end

  def show
    @move = Move.find(params[:id])
  end
end
