module UsersHelper

  def avatar_url(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=72"
    end
  end

    def link_to_user_description(user)
    "<a href= \" \" class=\"thumbnail with-content\" data-rel=\"lightbox[gallery]\"><img alt=\"Photo-card-big-1\" src=#{avatar_url(user)}>
    <div class=\"thumbnail-hover-w\">
    <div class=\"thumbnail-hover-title\">  #{user.name} </div>
    <div class=\"thumbnail-hover-text\"> \"User Information here!\" </div>
    </div>
    </a>".html_safe
  end


end

