module FeaturesHelper
  def snippet_or_upload_show(slide)
  	if slide.class == Snippet
  		raw Pygments.highlight(slide.code, lexer: slide.language)
  	elsif slide.class == Upload
  		image_tag slide.image_url.to_s, width: '100' if slide.image?
  	end
  end

  def user_dependent_view_for_feature(feature, attribute)
    if feature.editable_by?(current_user)
      render partial: "projects/hero/edit_project_feature_#{attribute}", :locals => {:feat => feature}
    else
      feature.send(attribute)
    end
  end
end
