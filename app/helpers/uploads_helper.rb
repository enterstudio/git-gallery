module UploadsHelper
	def submit_to_uploadable(uploadable)
		if uploadable.class == Feature
			render 'uploads/feature_submit'
		else
			render 'uploads/project_submit'
		end
	end
end
