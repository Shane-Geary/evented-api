class Group < ApplicationRecord
    has_many :events, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :catchphrase, presence: true, uniqueness: true
end 
