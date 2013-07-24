module UploadsHelper
	def submit_to_uploadable(uploadable)
		if uploadable.class == Feature
			render 'feature_submit'
		else
			render 'project_submit'
		end
	end
end
