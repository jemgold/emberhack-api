class Meetup
  API_KEY = ENV['EMBERHACK_MEETUP']
  BASE_URL = "https://api.meetup.com/2/open_events.json"

  def initialize
  end

  def fetch(options = {})
    return if API_KEY.nil?
    options.reverse_merge!({key: API_KEY})
    query = []
    options.each do |key, value|
      query << "#{key.to_s}=#{value}"
    end
    query = query.join('&')
    response = HTTParty.get("#{BASE_URL}?#{query}")
    JSON.parse(response.body)['results']
  end
end