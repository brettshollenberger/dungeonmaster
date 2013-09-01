class CharacterMoves < ActiveRecord::Base
  attr_accessible :character, :move

  validates :character, :move, {
    presence: true
  }

  belongs_to :character
  belongs_to :move
end
