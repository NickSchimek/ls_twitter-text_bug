# This repo is to replicate the issue documented at:

### [twitter-text #221](https://github.com/twitter/twitter-text/issues/221)

There are two files located at:

1. app/services/twitter_api.rb
2. spec/services/twitter_api_spec.rb

clone repo
bundle install

run rspec test with:

```
bundle exec rspec spec/services/twitter_api_spec.rb
```

should receive error

```
Failures:

  1) TwitterApi Posting to twitter should be able to post 280 chars or less to twitter
     Failure/Error: result = parse_tweet(tweet)

     NoMethodError:
       undefined method `[]' for nil:NilClass
     # ./app/services/twitter_api.rb:11:in `post_to_twitter'
     # ./spec/services/twitter_api_spec.rb:10:in `block (3 levels) in <top (required)>'
```

Found fix by requiring absolute path instead of using rails_helper

inside the spec/services/twitter_api_spec.rb

comment out the rails_helper & uncomment the absolute path:

```
#require 'rails_helper'
require './app/services/twitter_api'

describe TwitterApi do
```

run tests:

```
bundle exec rspec spec/services/twitter_api_spec.rb
```

And tests now pass

```
.

Finished in 0.00437 seconds (files took 0.30772 seconds to load)
1 example, 0 failures
```
Update:
This was a namespace conflict introduced in the twitter-text gem version 2.0 and was fixed in version 2.1.0 


