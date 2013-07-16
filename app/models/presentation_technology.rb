class PresentationTechnology < ActiveRecord::Base
  attr_accessible :presentation_id, :technology_id

  belongs_to :presentation
  belongs_to :technology
end
