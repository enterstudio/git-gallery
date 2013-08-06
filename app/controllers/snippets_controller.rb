class SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @feature = Feature.find(params[:feature_id])
    @snippet = Snippet.new
  end

  def create
    @feature = Feature.find(params[:feature_id])
    @snippet = @feature.snippets.build(params[:snippet])
    @snippet.position = @feature.snippets.size + @feature.uploads.size - 1
    if @snippet.save
      if params[:next_state] == "true"
        redirect_to new_feature_slide_path(@feature), notice: 'Last slide was successfully created.'
      else
        redirect_to @feature.project, notice: "Slides were successfully created."
      end
    else
      render :new
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    @snippet = Snippet.find(params[:id])
    @feature = @snippet.feature
    if @snippet.update_attributes(params[:snippet])
      redirect_to @feature, notice: "Snippet was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    redirect_to snippets_url
  end

  def destroy_on_back
    @feature = Feature.find(params[:id])
    @feature.snippets.last.destroy
  end
end
