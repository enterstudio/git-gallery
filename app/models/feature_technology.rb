class FeatureTechnology < ActiveRecord::Base
  attr_accessible :feature_id, :technology_id

  belongs_to :feature
  belongs_to :technology

  extend Findable
end
