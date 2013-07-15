class Project < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :user_projects
  has_many :users, :through => :user_projects

  has_many :project_technologies
  has_many :technologies, :through => :project_technologies
end
