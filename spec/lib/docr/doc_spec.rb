require 'spec_helper'

describe Docr::Doc do
  it "should initialize with a method name and a block" do
    lambda { Docr::Doc.new(:to_s){ puts 'hello' } }.should_not raise_error
  end
end
