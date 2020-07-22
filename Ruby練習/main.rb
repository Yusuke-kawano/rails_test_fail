require 'net/http'
require 'uri'
require 'json'
require './key'

endPoint  = 'https://api.coin.z.com/public'
path      = '/v1/trades?symbol=BTC&page=1&count=10'

uri = URI.parse(endPoint + path)
req = Net::HTTP::Get.new(uri.to_s)

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') {|http|
  http.request(req)
}
puts JSON.pretty_generate(JSON.parse(response.body), :indent=>'  ')





