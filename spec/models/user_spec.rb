require 'spec_helper'

describe User do

  describe 'associations' do
    it { should have_many(:repos) }
    it { should have_many(:user_projects) }
    it { should have_many(:projects) }
    it { should have_many(:technologies) }
  end

  describe 'validations' do
    it { should validate_uniqueness_of(:email) }
    it 'should allow a properly formatted email' do
      user = User.create(:email => 'example@example.com')
      user.should be_valid
    end
    it 'should not allow an improperly formatted email' do
      user = User.create(:email => 'grandmasayshello')
      user.should_not be_valid
    end
  end

end

 

 
