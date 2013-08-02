class ProjectTechnology < ActiveRecord::Base
  attr_accessible :project_id, :technology_id

  belongs_to :project
  belongs_to :technology

  def self.find_or_create_by(hash)
    self.where(hash).first || self.create(hash)
  end 
end