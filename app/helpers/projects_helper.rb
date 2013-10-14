module ProjectsHelper


	def link_to_project_image(project)
		if project.upload
			link_to image_tag(project.upload.image_url.to_s), project_path(project)
		else
			link_to image_tag("http://octodex.github.com/images/octocat-de-los-muertos.jpg"), project_path(project)
		end
	end

	def project_image(project)
		if project.upload
			link_to( image_tag(project.upload.image_url.to_s), project_path(project))
		else
			link_to( image_tag("http://octodex.github.com/images/octocat-de-los-muertos.jpg"), project_path(project))
		end
	end

	def user_dependent_view(project, attribute)
		if project.editable_by?(current_user)
			render partial: "projects/hero/edit_project_#{attribute}", :locals => {:project => project}
		else
			project.send(attribute)
		end
	end

	def user_dependent_edit(project)
		if project.editable_by?(current_user)
			render partial: "projects/hero/edit_project_button", :locals => {:project => project}
		end
	end

	def image_link(project)
		if project.upload
		 "#{project.upload.image_url.to_s}"
		else
			"http://octodex.github.com/images/octocat-de-los-muertos.jpg"
		end
	end

	def show_project_description(project)
		(project.description if project.description) || "a work in progress"
	end

	def show_truncated_project_description(project)
		show_project_description(project).truncate(30)
	end

	def show_project_technologies(project)
		render :partial => "projects/partials/technologies", :locals => { :project => project } if project.technologies.size > 0
	end

	def show_project_contributers(project)
		render :partial => "projects/partials/contributers", :locals => { :project => project } if project.users.size > 0
	end

	def default_description
		"Add a Description"
	end

	def no_slides_message(feature)
		current_user == feature.user ? "No Slides Yet! Add Some!" : "#{feature.user.name.split.first} hasn't added any slides yet!"
	end
end
