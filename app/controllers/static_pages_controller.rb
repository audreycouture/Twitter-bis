class StaticPagesController < ApplicationController

	def index
		#recupère params text
		tweet = params[:tweet]
		#lance service tweet
		SendTweet.new(params[:tweet]).perform
		#redirect_to home

	end

end
