require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/favorites.json',

).to_s

favorite_hash = {
     user_id: 3,
     contact_id: 1
}

p RestClient.post(url, favorite: favorite_hash)
