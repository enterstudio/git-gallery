class Project < ActiveRecord::Base
  attr_accessible :name, :source

  has_many :features
  has_many :users, :through => :features
end
