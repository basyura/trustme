
module Trustme
  CRAWL_MAX = 100
  class Crawler
    #
    def initialize
      @client = Rubytter.new
    end
    #
    def start(screen_name)
      crawl(screen_name, 0, [])
    end

    private
    def crawl(screen_name, number, list)
      followers = @client.followers(screen_name)
      followers.each do |user|
        list << user if target?(user)
        break if number > CRAWL_MAX
        number += 1
      end
      if number <= CRAWL_MAX
        crawl(followers[0].screen_name, number, list)
      end
      list
    end

    def target?(user)
      user.followers_count > 10000 && user.friends_count > 10000 && !user.following
    end
  end
end
