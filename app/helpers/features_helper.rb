module FeaturesHelper
  def snippet_or_upload_show(slide)
  	if slide.class == Snippet
  		raw Pygments.highlight(slide.code, lexer: slide.language)
  	elsif slide.class == Upload
  		image_tag slide.image_url.to_s, width: '100' if slide.image?
  	end
  end
end
