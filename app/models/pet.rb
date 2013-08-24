class Pet < ActiveRecord::Base
  attr_accessible :character, :first_name, :hp, 
  :last_name, :level, :experience, :strength, 
  :luck, :intelligence, :sex_appeal

  validates :first_name, :hp, 
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

  validates_uniqueness_of :first_name, 
    scope: :character_id, :message => "Character already has a pet by that name"

  belongs_to :character

  def full_name
    "#{first_name} #{last_name}"
  end
end
