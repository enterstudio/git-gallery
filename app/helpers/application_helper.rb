module ApplicationHelper



  def link_to_hidden_description(project)
    "<a href= \"../projects/#{project.id} \" class=\"thumbnail with-content\"><img alt=\"Photo-card-big-1\" src=#{image_link(project)}>
        <div class=\"thumbnail-hover-w\">
        <div class=\"thumbnail-hover-title\">  #{project.name} </div>
        <div class=\"thumbnail-hover-text\">  #{project.description.truncate(200) if project.description} </div>
        </div>
        </a>".html_safe
  end
end
