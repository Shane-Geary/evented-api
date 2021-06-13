class EventSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :location, :event_type, :start_time, :end_time, :poster_url, :group_id, :user_id
  
end 
