class User < ApplicationRecord
  has_many :events

  has_secure_password
  
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4 }

  validates :password, presence: true 
end
