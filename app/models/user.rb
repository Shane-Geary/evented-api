class User < ApplicationRecord
  # include Devise::JWT::RevocationStrategies::JTIMatcher

  # devise :database_authenticatable, :registerable, :validatable,
  #        :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :events

  has_secure_password
  
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4 }

  validates :password, presence: true 
end
