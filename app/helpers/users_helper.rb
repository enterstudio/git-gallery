module UsersHelper
  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase if user.email
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=96"
    end
  end

  def link_to_user_description(user)
    "<a href= \"/users/#{user.id}\" class=\"thumbnail with-content\"><img alt=\"Photo-card-big-1\" src=#{avatar_url(user)}>
    <div class=\"thumbnail-hover-w\">
    <div class=\"thumbnail-hover-title\">  #{user.name} </div>
    </div>
    </a>".html_safe
  end

  def show_projects(user)
    if user == current_user
      if user.projects.empty?
        render :partial => "users/gallery/my_project_explanation"
      else
        render :partial => "users/gallery/user_gallery", :locals => { :page_user => user }
      end
    else
      render :partial => "users/gallery/user_projects", :locals => {:user => user}
    end
  end

  def get_the_projects(user)
    login(user)
    user.associate_with_existing_projects
    Repo_scraper.new(user)
  end

  def show_projects_or_repos(user)
    if user == current_user
      render :partial => "users/gallery/user_repos", :locals => { :page_user => user }
    else
      render :partial => "users/gallery/user_projects_information", :locals => {:user => user}
    end
  end
end
