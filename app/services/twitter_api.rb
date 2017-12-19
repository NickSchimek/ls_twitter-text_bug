require 'twitter-text'
class TwitterApi
  include Twitter::Validation

  def initialize

  end

  def post_to_twitter(tweet = "test message")

   result = parse_tweet(tweet)

  end
end
