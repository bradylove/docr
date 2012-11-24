require 'spec_helper'

main = self

describe Docr::DSL do
  its(:class) { should eq Module }

  it "should respond to :docr" do
    main.should respond_to(:docr)
    Module.new.should respond_to(:docr)
  end

  it "should not respond to :docr" do
    Object.new.should_not respond_to(:docr)
  end

  it "should create a new docr group" do
    Docr::Group.should_receive(:new)

    module TestModule
      docr String do
      end
    end
  end
end
