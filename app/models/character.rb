class Character < ActiveRecord::Base
  attr_accessible :experience, :first_name, :last_name, :level, :user

  validates :experience, :first_name, :last_name, :level, :user,
    presence: true

  validates :experience, :level,
    numericality: true

  belongs_to :user
end
