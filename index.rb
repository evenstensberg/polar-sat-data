require 'net/http'
require 'uri'
require 'openssl'

# https is nice :)
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

uri = URI.parse('https://api.met.no/weatherapi/polarsatellite/1.1/?satellite=noaa')
response = Net::HTTP.get_response(uri)
sat_data = File.open( "sat_data.png","w")
sat_data << response.body