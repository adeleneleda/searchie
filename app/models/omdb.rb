class Omdb
  require 'net/http'
  require 'json'

  HOST = 'omdbapi.com'

  def call(search_term)
    uri = URI("http://#{HOST}?apikey=#{api_key}&t=#{search_term}")
    response = Net::HTTP.get(uri)

    JSON.parse(response)
  end

  def api_key
    ENV["OMDB_API_KEY"]
  end
end