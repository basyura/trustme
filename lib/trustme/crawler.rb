
module Trustme
  CRAWL_MAX = 5
  class Crawler
    #
    def initialize
      @client = Rubytter.new
    end
    #
    def start(screen_name)
      puts "start from " + screen_name
      crawl([screen_name], [])
    end

    private
    def crawl(names, list)
      names.each do |screen_name|
        followers = @client.followers(screen_name)
        followers.each do |user|
          return list if list.length > CRAWL_MAX
          list << user if target?(user)
        end
        crawl(followers.map {|u| u.screen_name }, list)
      end
      list
    end

    def target?(user)
      user.followers_count > 10000 && user.friends_count > 10000 && !user.following
    end
  end
end
