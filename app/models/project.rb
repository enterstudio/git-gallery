class Project < ActiveRecord::Base
  attr_accessible :description, :title, :user_id

  belongs_to :user

  has_many :project_technologies
  has_many :technologies, :through => :project_technologies
end
