require 'spec_helper'
require 'trustme'

describe Trustme::Client do
  it "follow user" do
    client = Trustme::Rubytter.new
    screen_name = client.verify_credentials.screen_name

    subject.follow('basyura').each do |screen_name|
      client.user(user.screen_name).following.should be_true
    end
  end
end
