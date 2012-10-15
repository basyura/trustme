require 'spec_helper'
require 'trustme'

describe Trustme::Client do
  #it "follow user" do
    #ret = subject.__send__(:follow, 'basyura')
    #ret.following.should be_true
  #end

  #it "crawl user" do
    #subject.crawl
  #end

  #it "random tweet" do
    #subject.tweet
  #end
  #
  #it "follow who follow me" do
    #subject.follow_followers
  #end
  
  it "stat" do
    puts subject.stat
  end
end
