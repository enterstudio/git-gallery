class User < ActiveRecord::Base
  attr_accessible :email, :name, :technologies, :presentations

  has_many :presentations
  has_many :technologies, :through => :presentations
end
