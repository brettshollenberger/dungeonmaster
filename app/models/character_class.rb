class CharacterClass < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_many :characters
  has_many :moves
end
