class Snippet < ActiveRecord::Base
  attr_accessible :code, :language, :name, :feature_id

  belongs_to :feature
end
