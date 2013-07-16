class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :features

  has_many :features
  has_many :technologies, :through => :features
  has_many :projects, :through => :features
end
