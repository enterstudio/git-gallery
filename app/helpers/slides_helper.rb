module SlidesHelper
  def slide_prompt(feature)
    if feature.uploads.count == 0 && feature.snippets.count == 0
      "What would you like on your first slide?" 
    else
      "What would you like on your next slide?"
    end
  end
end