require 'rails_helper'
#require './app/services/twitter_api'

describe TwitterApi do

  context 'Posting to twitter' do
    it 'should be able to post 280 chars or less to twitter' do
      client = TwitterApi.new
      tweet = "Test Tweet"
      client.post_to_twitter(tweet)
    end

  end
end
