
module Trustme
  CRAWL_MAX = 5
  class Crawler
    #
    def initialize
      @client = Rubytter.new
    end
    #
    def start(screen_name)
      crawl(screen_name, 0)
    end

    private
    def crawl(screen_name, number)
      follwers = @client.follwers(screen_name)
      follwers.each do user
        puts user.screen_name
        number += 1
        return if number > CRAWL_MAX
      end
      if number <= CRAWL_MAX
        crawl(follwers[0].user.screen_name, number)
      end
    end
  end
end
