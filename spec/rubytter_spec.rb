require 'spec_helper'
require 'trustme'

describe Trustme::Rubytter do
  it "new instance" do
    Trustme::Rubytter.new
  end
  it "followers" do
    client = Trustme::Rubytter.new
    client.followers('basyura').should_not be_empty
  end
end
