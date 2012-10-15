#-*- coding: utf-8 -*-
module Trustme
  class Client
    #
    def initialize
      @client = Rubytter.new
    end
    #
    def crawl
      Crawler.new.start(random_user_name).each do |user|
        follow(user.screen_name)
      end
    end
    #
    def tweet
      word = ["あ", "い", "う", "え", "お"][rand 0..4]
      @client.search(word).each do |status|
        if status.text !~ /@/
          @client.update(status.text)
          break
        end
      end
    end
    #
    def follow_followers
      @client.followers(my_screen_name).each do |user|
        unless user.following
          follow(user.screen_name)
        end
      end
    end
    #
    private
    def follow(screen_name)
      @client.follow(screen_name)
    end
    #
    def random_user_name
      users = @client.friends(my_screen_name)
      users[rand 0..(users.length - 1)].screen_name
    end
    def my_screen_name
      @client.verify_credentials.screen_name
    end
  end
end

