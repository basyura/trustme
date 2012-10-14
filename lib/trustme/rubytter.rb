
module Trustme
  class Rubytter
    def initialize
      @config = Trustme::Config.new
      consumer = ::OAuth::Consumer.new(
        @config.consumer_key    ,
        @config.consumer_secret ,
        {
          :site  => 'https://api.twitter.com' ,
        }
      )
      access_token = ::OAuth::AccessToken.new(
        consumer ,
        @config.access_token ,
        @config.access_token_secret
      )
      @client = ::OAuthRubytter.new(access_token)
    end
    def followers(user)
      @client.followers(user)
    end
  end
end

