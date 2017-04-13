require 'httparty'

ENV['FOOD2FORK_KEY'] = '5d02cd72826e2253f1a983e6903cc578'
class Recipe
	include HTTParty

	key_value = ENV['FOOD2FORK_KEY']

end