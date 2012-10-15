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
    private
    def follow(screen_name)
      puts screen_name
      @client.follow(screen_name)
    end
    #
    def random_user_name
      name  = @client.verify_credentials.screen_name
      users = @client.friends(name)
      users[rand 0..(users.length - 1)].screen_name
    end
  end
end

