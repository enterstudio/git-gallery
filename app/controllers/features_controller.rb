class FeaturesController < ApplicationController
  skip_before_filter :login_required, :only => [:index, :show, :edit]
  
  # GET /users/1/features
  # GET /users/1/features.json
  def index
    @project = Project.find(params[:project_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @features }
    end
  end

  # GET /users/1/features/1
  # GET /users/1/features/1.json
  def show
    @feature = Feature.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feature }
    end
  end

  # GET /users/1/features/new
  # GET /users/1/features/new.json
  def new
    @project = Project.find(params[:project_id])
    @technologies = Technology.all
    @feature = @project.features.build

    can_current_user?(:create, @feature)
  end

  # GET /users/1/features/1/edit
  def edit
    @feature = Feature.find(params[:id])
    @technologies = Technology.all
    
    # can_current_user?(:edit, @feature)
  end

  # POST /users/1/features
  # POST /users/1/features.json
  def create
    @project = Project.find(params[:project_id])
    @feature = @project.features.build(params[:feature])
    @feature.user_id = current_user.id

    respond_to do |format|
      if @feature.save
        format.html { redirect_to new_feature_slide_path(@feature), notice: 'Feature was successfully created.' }
        format.json { render json: @feature, status: :created, location: @feature }
      else
        format.html { render action: "new" }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1/features/1
  # PUT /users/1/features/1.json
  def update
    params[:slides].each_with_index do |slide, index|
      snippet_or_upload = slide[:class].constantize.find(slide[:id])
      snippet_or_upload.position = index + 1
      snippet_or_upload.save
    end
    params[:feature][:technology_ids] ||= []
    @feature = Feature.find(params[:id])

    respond_to do |format|
      if @feature.update_attributes(params[:feature])
        format.html { redirect_to feature_path(@feature), notice: 'Feature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1/features/1
  # DELETE /users/1/features/1.json
  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy if can_current_user?(:destroy, @feature) == true

    respond_to do |format|
      format.html { redirect_to user_path(@feature.user) }
      format.json { head :no_content }
    end
  end
end
