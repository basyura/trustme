require 'spec_helper'
require 'trustme'

describe Trustme::Config do
  it "not empty config" do
    subject.consumer_secret.should_not be_empty
    subject.consumer_secret.should_not be_empty
    subject.access_token.should_not be_empty
    subject.access_token_secret.should_not be_empty
  end
end
