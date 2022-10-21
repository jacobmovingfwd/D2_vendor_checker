require 'HTTParty'

# Bungie App: https://www.bungie.net/en/Application/Detail/46420
# API Key 1f04321c48104cfd911e348fb0a1cea5

class BungieAPI
  include HTTParty
  base_uri 'https://www.bungie.net/Platform'

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end


response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
