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
  # def edit_project_button
  #   if current_user_can?(:edit, @project)
  #     "<button>Edit Project</button>"
  #   end
  # end

end
