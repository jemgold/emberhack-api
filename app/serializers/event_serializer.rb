class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :latitude, :longitude, :start_time, :end_time, :url
end
