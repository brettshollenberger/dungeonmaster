class Pet < ActiveRecord::Base
  attr_accessible :character, :first_name, :hp, 
  :last_name

  validates :first_name, :last_name, :hp, :character, {
    presence: true
  }

  belongs_to :character

  def full_name
    "#{first_name} #{last_name}"
  end
end
