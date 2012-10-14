
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
        if user.followers_count > 10000 && user.friends_count > 10000
          list << user
          puts "    #{user.screen_name} #{user.followers_count} #{user.friends_count}"
        end
        number += 1
        return if number > CRAWL_MAX
      end
      if number <= CRAWL_MAX
        crawl(followers[0].screen_name, number, list)
      end
      list
    end
  end
end
