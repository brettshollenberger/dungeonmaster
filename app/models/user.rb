class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  
  validates :email, :password, :username, {
    presence: true
  }

  validates_uniqueness_of :username, :email

  has_many :characters
end
