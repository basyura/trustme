require 'spec_helper'
require 'trustme'

describe Trustme::Crawler do
  it 'new instance' do
    subject.should_not be_nil
  end

  it 'crawl someuer' do
    subject.start('basyura').should_not be_nil
  end
end
