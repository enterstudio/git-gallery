class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :user_projects
  has_many :projects, :through => :user_projects

  has_many :user_technologies
  has_many :technologies, :through => :user_technologies
end
