class Character < ActiveRecord::Base
  attr_accessible :experience, :first_name, :last_name, :level, :user, :character_class

  validates :experience, :first_name, :last_name, :level, :user, :character_class,
    presence: true

  validates :experience, :level,
    numericality: true

  belongs_to :user
  belongs_to :character_class
end
