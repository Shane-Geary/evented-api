class Event < ApplicationRecord
    has_one_attatched :poster
    belongs_to :user 
    belongs_to :group 
end
