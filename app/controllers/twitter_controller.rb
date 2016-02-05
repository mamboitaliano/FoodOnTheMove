require "erb"
include ERB::Util

class TwitterController < ApplicationController
	
	def get_tweets
		@key = url_encode(ENV['TWITTER_KEY'])
		@secret = url_encode(ENV['TWITTER_SECRET'])

		p @key
		p @secret
	end
end

