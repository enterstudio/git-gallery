class Project < ActiveRecord::Base
  attr_accessible :name, :source

  has_many :features
  has_many :users, :through => :features

  has_many :uploads, as: :uploadable, :dependent => :destroy
end
