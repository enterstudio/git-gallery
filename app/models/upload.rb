class Upload < ActiveRecord::Base
  attr_accessible :extension, :name, :image
  belongs_to :uploadable, polymorphic: true


  mount_uploader :image, ImageUploader
end
