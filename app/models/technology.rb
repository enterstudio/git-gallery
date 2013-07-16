class Technology < ActiveRecord::Base
  attr_accessible :name

  has_many :presentation_technologies
  has_many :presentations, :through => :presentation_technologies
  has_many :users, :through => :presentations  

end
