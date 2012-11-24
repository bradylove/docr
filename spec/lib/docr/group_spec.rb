require 'spec_helper'

describe Docr::Group do
  let(:group) { Docr::Group.new(String) }
  subject { group }

  it "should initialize with a class" do
    lambda { Docr::Group.new(String) }.should_not raise_error
  end

  it { should respond_to :doc }

  context "creating new docs" do
    it "should add docs to the group" do
      Docr::Doc.should_receive(:new).exactly(2).times

      group.doc :to_s do
      end
      group.doc :to_a do
      end

      group.docs.count.should eq 2
    end
  end
end
