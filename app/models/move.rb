class Move < ActiveRecord::Base
  attr_accessible :character_class, :description, :dice_type, :frequency, :number_of_dice, :range, :title

  validates :title, :frequency, :range, {
    presence: true
  }

  belongs_to :character_class
end
