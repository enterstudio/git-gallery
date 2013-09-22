require 'spec_helper'

describe User do

  describe 'associations' do
    it { should have_many(:repos) }
    it { should have_many(:user_projects) }
    it { should have_many(:projects) }
    it { should have_many(:technologies) }
  end

end
