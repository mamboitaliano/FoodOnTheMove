require "erb"

# include HTTParty
include ERB::Util

class TwitterController < ApplicationController
	
	def get_tweets
		p "------------------------------------------------------------------------------"
		@key = url_encode(ENV['TWITTER_KEY'])
		@secret = url_encode(ENV['TWITTER_SECRET'])
		p "#{@key}:#{@secret}"

		@source_string = Base64.encode64("#{@key}:#{@secret}")
		p @source_string

		response = HTTParty.post('https://api.twitter.com/oauth2/token',
            :body => {:grant_type => 'client_credentials'},
            :headers => {'User-Agent'=>'FoodOnTheMove','Authorization' => 'Basic #{@source_string}', 'Content-Type' => 'application/x-www-form-urlencoded;charset=UTF-8'})
		p response
	end
end

