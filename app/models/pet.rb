class Pet < ActiveRecord::Base
  attr_accessible :character, :first_name, :hp, 
  :last_name, :level, :experience, :strength, 
  :luck, :intelligence, :sex_appeal

  validates :first_name, :last_name, :hp, 
    :character, :level, :experience,
    :strength, :luck, :intelligence,
    :sex_appeal, {
    presence: true
  }

  validates :hp, :level, :experience,
    :strength, :luck, :intelligence,
    :sex_appeal, {
    numericality: true
  }

  belongs_to :character

  def full_name
    "#{first_name} #{last_name}"
  end
end
