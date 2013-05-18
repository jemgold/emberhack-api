class Event < ActiveRecord::Base
  geocoded_by :address
  # after_validation :geocode, if: :address_changed?

  def self.search(options = {})
    m = Meetup.new
    results = m.fetch(options)
    results.each do |result|
      e = Event.new
      if result['venue']
        e.latitude = result['venue']['lat']
        e.longitude = result['venue']['lon']
        e.address = "#{result['venue']['address_1']}".inspect
      end
      e.title = result['name'].inspect
      e.uid = result['id']
      # e.description = result['description']
      e.url = result['event_url']
      next unless e.save
    end
  end
end
