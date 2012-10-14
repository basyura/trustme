require 'spec_helper'
require 'trustme'

describe Trustme::Crawler do
  it 'new instance' do
    subject.should_not be_nil
  end

  it 'crawl over 10000 users' do
    Trustme::Crawler.const_set('CRAWL_MAX', 70)

    list = subject.start('basyura')
    list.should_not be_empty
    list.each do |user|
      user.followers_count.should >= 10000
      user.friends_count.should >= 10000
      puts "    #{user.screen_name} #{user.followers_count} #{user.friends_count} #{user.following}"
    end
  end
end
