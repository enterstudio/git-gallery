module ProjectsHelper
	def link_to_project_image(project)
		if project.uploads.count > 0
			link_to image_tag(project.uploads.first.image_url.to_s), project_path(project)
		else
			link_to image_tag("http://octodex.github.com/images/octocat-de-los-muertos.jpg"), project_path(project)
		end
	end

	def project_image(project)
		if project.uploads.count > 0
			image_tag(project.uploads.first.image_url.to_s)
		else
			image_tag("http://octodex.github.com/images/octocat-de-los-muertos.jpg")
		end
	end

	def user_dependent_view(project, attribute)
		if project.editable_by?(current_user)
			render partial: "projects/hero/edit_project_#{attribute}", :locals => {:project => project}
		else
			project.send(attribute)
		end
	end

	def image_link(project)
		if project.uploads != []
		 "#{project.uploads.first.image_url.to_s}"
		else
			"http://octodex.github.com/images/octocat-de-los-muertos.jpg"
		end
	end

	def default_description
		"Add a Description"
	end
end



