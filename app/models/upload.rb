class Upload < ActiveRecord::Base
  attr_accessible :extension, :name, :image
  belongs_to :uploadable, polymorphic: true


  mount_uploader :image, ImageUploader

  # def location_dependent_save(uploadable)
  # 	if self.save
  #     if uploadable.class.name == "Feature"
  #       redirect_to user_feature_path(uploadable.user, uploadable)
  #     else
  #       redirect_to project_path(uploadable)
  #     end
  #   else
  #     render :new
  #   end
  # end
end
