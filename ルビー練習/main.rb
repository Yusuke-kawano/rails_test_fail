require 'net/http'
require 'uri'
require 'json'
require './key'
t (endoint
req = Net::HTTP::Get.new(uri.to_s)

response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') {|http|
  http.request(req)
}
puts JSON.pretty_generate(JSON.parse(response.body), :indent=>'  ')





