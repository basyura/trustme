require 'spec_helper'
require 'trustme'

describe Trustme::Rubytter do
  it "new instance" do
    Trustme::Rubytter.new
  end

  it 'display screen_name' do
    screen_name = subject.verify_credentials.screen_name
    screen_name.should_not be_empty
    puts "    screen_name is " + screen_name
  end

  it "followers" do
    subject.followers('basyura').should_not be_empty
  end

  it "exists friend ship" do
    screen_name = subject.verify_credentials.screen_name
    user = subject.friends(screen_name)[0]
    user = subject.user(user.screen_name)
    user.following.should be_true
  end
end
