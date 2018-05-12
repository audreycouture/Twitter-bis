require 'dotenv'
require 'twitter'

class SendTweet
	attr_accessor :tweet

	def initialize(params)
		Dotenv.load
		@tweet = params[:tweet]

	end

	def perfom
		log_in_to_twitter
		send_tweet

	end

	private

	def log_in_to_twitter

		client = Twitter::REST::Client.new do |config|
		config.consumer_key = ENV['TWITTER_API_KEY']
  		config.consumer_secret     = ENV['TWITTER_API_SECRET']
  		config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
  		config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
		end

	end

	def send_tweet
		#send params[:text]
		client.update(':tweet')
	end

end