class EventSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :location, :type, :start_time, :end_time, :group_id, :poster
end
