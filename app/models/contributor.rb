class Contributor < ActiveRecord::Base
  attr_accessible :email, :name, :github_id

  has_many :project_contributors
  has_many :projects, :through => :project_contributors
end
