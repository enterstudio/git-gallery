class Project < ActiveRecord::Base
  attr_accessible :name :source

  has_many :features
  has_many :project_users
  has_many :users, :through => :project_users
end
