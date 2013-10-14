require 'spec_helper'

describe User do

  it "should have a username" do
    user = FactoryGirl.build(:user)
    user.name = nil
    user.should_not be_valid
  end

  it "should have a github id" do
    user = FactoryGirl.build(:user)
    user.github_id = nil
    user.should_not be_valid
  end

  it "should have a github token" do
    user = FactoryGirl.build(:user)
    user.token = nil
    user.should_not be_valid
  end
  it "should have an avatar" do
    user = FactoryGirl.build(:user)
    user.avatar_url = nil
    user.should_not be_valid
  end
  it "should have one or more repos" do
    user = FactoryGirl.build(:user)
    repo = Repo.new(:name => "test_repo")
    user.repos << repo
    user.repos.should include repo
  end
  it "should have an unique email" do
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.build(:user)
    user2.should_not be_valid
  end


end
