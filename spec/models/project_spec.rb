require 'spec_helper'

describe Project do
  it "should have a name" do
    project = Project.new
    project.name = "test_dude"
    expect(project.name).to eq("test_dude")
  end

  it "should be invalid if it does not have a name" do
    project = Project.new
    project.name = nil
    project.should_not be_valid
  end

  it "should have a repo"

end
