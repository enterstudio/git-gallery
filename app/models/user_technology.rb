class UserTechnology < ActiveRecord::Base
  attr_accessible :user_id, :technology_id

  belongs_to :user
  belongs_to :technology
end
