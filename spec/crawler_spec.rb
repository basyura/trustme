require 'spec_helper'
require 'trustme'

describe Trustme::Crawler do
  it 'new instance' do
    subject.should_not be_nil
  end

  it 'crawl over 10000 users' do
    list = subject.start('basyura')
    list.should_not be_empty
    list.each do |user|
      user.followers_count.should >= 10000
      user.friends_count.should >= 10000
    end
  end
end
