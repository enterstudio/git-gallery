class Snippet < ActiveRecord::Base

  attr_accessible :code, :language, :name, :feature_id, :url, :description, :position
  belongs_to :feature
  
end
