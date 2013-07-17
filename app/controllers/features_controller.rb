class FeaturesController < ApplicationController
  # GET /users/1/features
  # GET /users/1/features.json
  def index
    @user = User.find(params[:user_id])
    @features = @user.features

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @features }
    end
  end

  # GET /users/1/features/1
  # GET /users/1/features/1.json
  def show
    @user = User.find(params[:user_id])
    feature = Feature.find(params[:id])
    
    if feature.user.id == @user.id
      @feature = feature
    else 
      redirect_to @user, notice: "Feature #{feature.id} does not belong to you."
    end

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @feature }
    # end
  end

  # GET /users/1/features/new
  # GET /users/1/features/new.json
  def new
    @user = User.find(params[:user_id])
    @feature = @user.features.build
    
    3.times do
      @feature.technologies.build
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feature }
    end
  end

  # GET /users/1/features/1/edit
  def edit
    @user = User.find(params[:user_id])
    @feature = @user.features.find(params[:id])
  end

  # POST /users/1/features
  # POST /users/1/features.json
  def create
    # raise params.inspect

    @user = User.find(params[:user_id])

    @feature = @user.features.build(params[:feature])

    respond_to do |format|
      if @feature.save
        format.html { redirect_to user_feature_path(@user, @feature), notice: 'Feature was successfully created.' }
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
    @user = User.find(params[:user_id])

    @feature = Feature.find(params[:id])

    respond_to do |format|
      if @feature.update_attributes(params[:feature])
        format.html { redirect_to user_feature_path(@user, @feature), notice: 'Feature was successfully updated.' }
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
    @feature.destroy

    respond_to do |format|
      format.html { redirect_to user_features_url }
      format.json { head :no_content }
    end
  end
end
