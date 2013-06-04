require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json'

).to_s



p RestClient.post(url, user: {name: 'wc', email: 'wc@wc.com'})