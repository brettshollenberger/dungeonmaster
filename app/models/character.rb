class Character < ActiveRecord::Base
  attr_accessible :experience, :first_name, 
  :last_name, :hp, :level, :user, :character_class,
  :height, :weight, :strength, :luck, :intelligence,
  :sex_appeal, :gold

  validates :experience, :first_name, :last_name, 
    :hp, :level, :user, :character_class,
    :height, :weight, :strength, :luck, 
    :intelligence, :sex_appeal, :gold, {
      presence: true
    }

  validates :experience, :level, :hp, :height, 
    :weight, :strength, :luck, :intelligence, 
    :sex_appeal, :gold, {
      numericality: true
    }

  belongs_to :user
  belongs_to :character_class
  has_many :pets

  def charclass
    character_class.name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def update_level
    if self.experience < 1000
      self.level = 1
    elsif self.experience >= 1000 && self.experience < 3000
      self.level = 2
    end
    self.save
  end
end
