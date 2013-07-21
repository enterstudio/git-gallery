class Project < ActiveRecord::Base
  attr_accessible :name, :source

  has_many :features
  has_many :users, :through => :features

  has_many :uploads, as: :uploadable, :dependent => :destroy

   def this_user_features(chosen_user)
    Feature.joins(:project).where(:project_id => self.id, :user_id => chosen_user.id)
  end
end
