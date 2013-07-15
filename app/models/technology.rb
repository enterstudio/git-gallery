class Technology < ActiveRecord::Base
  attr_accessible :name

  has_many :user_technologies
  has_many :users, :through => :user_technologies

  has_many :project_technologies
  has_many :projects, :through => :project_technologies  

end
