require 'spec_helper'

describe Project do
  let(:project) { FactoryGirl.create(:project) }
  let(:user) { FactoryGirl.create(:user)}
  let(:repo) { FactoryGirl.create(:repo, project: project, user: user)}


  describe 'associations' do
    it { should have_one(:repo) }
    it { should have_one(:upload)}

    it { should have_many(:project_technologies) }
    it { should have_many(:technologies) }
    it { should have_many(:user_projects) }
    it { should have_many(:users) }
  end

  describe '#find_by_repo' do

    it "finds a project by it's associated repo" do
      found_project = Project.find_by_repo(repo)
      found_project.should == project
    end

  end

  describe '#creator' do

    it 'has a creator' do
      pending "stack level is too deep when I stub project.repo with repo and project.repo is nil otherwise"
      project.creator.should == user
    end

  end

end



