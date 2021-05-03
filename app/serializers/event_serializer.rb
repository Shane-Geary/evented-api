class EventSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :location, :type, :start_time, :end_time, :poster_url, :group_id
end
