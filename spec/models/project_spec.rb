require 'spec_helper'

describe Project do

  describe 'associations' do
    it { should have_one(:repo) }
    it { should have_one(:upload)}

    it { should have_many(:project_technologies) }
    it { should have_many(:technologies) }
    it { should have_many(:user_projects) }
    it { should have_many(:users) }
  end
  
end



