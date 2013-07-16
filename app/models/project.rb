class Project < ActiveRecord::Base
  attr_accessible :name, :source, :image

  mount_uploader :image, ImageUploader

  has_many :features
  has_many :users, :through => :features
end
