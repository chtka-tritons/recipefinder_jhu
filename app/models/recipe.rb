require 'httparty'
require 'pp'

ENV['FOOD2FORK_KEY'] = '5d02cd72826e2253f1a983e6903cc578'
class Recipe
	include HTTParty

	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	default_params key: key_value
	format :json

	def self.for(keyword)
		get("/search", query: {q: keyword})["recipes"]
	end

end