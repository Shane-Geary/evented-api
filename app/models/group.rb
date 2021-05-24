class Group < ApplicationRecord
    has_many :events 

    validates :name, presence: true, uniqueness: true
    # validates :fav_event, presence: true, uniqueness: true
    # validates :fav_genre, presence: true, uniqueness: true
    validates :catchphrase, presence: true, uniqueness: true
end 
