require 'spec_helper'

describe Docr::Doc do
  let(:doc) do
    Docr::Doc.new(self, :to_s) do
      description "Hello World!"
      path "/sessions/:id/string"

      arguments public_name:   "Description of public name",
                initial_value: "Description of initial value"

      example do
        puts "some_string".to_s
      end
    end
  end

  it "should initialize with a method name and a block" do
    lambda { Docr::Doc.new(self, :to_s){ puts 'hello' } }.should_not raise_error
  end

  it "should set the description if a variable is given" do
    doc.description "Doodle Time!"
    doc.description.should eq "Doodle Time!"
  end

  it "should return the description of no new one is passed" do
    doc.description.should eq "Hello World!"
  end

  it "should return the example block" do
    doc.example.should eq "        puts \"some_string\".to_s"
  end

  it "should return an empty hash" do
    doc.arguments.should eq({ public_name: "Description of public name",
                              initial_value: "Description of initial value" })
  end

  it "should return the path" do
    doc.path.should eq "/sessions/:id/string"
  end
end
