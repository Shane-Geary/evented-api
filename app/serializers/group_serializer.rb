class GroupSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :fav_event, :fav_genre, :catchphrase
  has_many :events
end
