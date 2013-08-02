class Technology < ActiveRecord::Base
  attr_accessible :name

  has_many :project_technologies
  has_many :projects, :through => :project_technologies

  has_many :feature_technologies
  has_many :features, :through => :feature_technologies
  has_many :users, :through => :features 

  def self.find_or_create_by(hash)
    self.where(hash).first || self.create(hash)
  end 
end
