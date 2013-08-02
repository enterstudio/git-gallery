class FeatureTechnology < ActiveRecord::Base
  attr_accessible :feature_id, :technology_id

  belongs_to :feature
  belongs_to :technology

  def self.find_or_create_by(hash)
    self.where(hash).first || self.create(hash)
  end 
end
