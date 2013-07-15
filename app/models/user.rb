class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :projects

  has_many :projects
  has_many :technologies, :through => :projects
end
