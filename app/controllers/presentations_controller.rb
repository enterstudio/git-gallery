class PresentationsController < ApplicationController
  # GET /users/1/presentations
  # GET /users/1/presentations.json
  def index
    @user = User.find(params[:user_id])
    @presentations = @user.presentations

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presentations }
    end
  end

  # GET /users/1/presentations/1
  # GET /users/1/presentations/1.json
  def show
    @presentation = Presentation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @presentation }
    end
  end

  # GET /users/1/presentations/new
  # GET /users/1/presentations/new.json
  def new
    @user = User.find(params[:user_id])
    @presentation = @user.presentations.build
    3.times do
      @presentation.technologies.build
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @presentation }
    end
  end

  # GET /users/1/presentations/1/edit
  def edit
    @user = User.find(params[:user_id])
    @presentation = @user.presentations.find(params[:id])
  end

  # POST /users/1/presentations
  # POST /users/1/presentations.json
  def create
    @user = User.find(params[:user_id])

    @presentation = @user.presentations.build(params[:presentation])

    respond_to do |format|
      if @presentation.save
        format.html { redirect_to user_presentation_path(@user, @presentation), notice: 'presentation was successfully created.' }
        format.json { render json: @presentation, status: :created, location: @presentation }
      else
        format.html { render action: "new" }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1/presentations/1
  # PUT /users/1/presentations/1.json
  def update
    @user = User.find(params[:user_id])

    @presentation = Presentation.find(params[:id])

    respond_to do |format|
      if @presentation.update_attributes(params[:presentation])
        format.html { redirect_to user_presentation_path(@user, @presentation), notice: 'presentation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @presentation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1/presentations/1
  # DELETE /users/1/presentations/1.json
  def destroy
    @presentation = Presentation.find(params[:id])
    @presentation.destroy

    respond_to do |format|
      format.html { redirect_to user_presentations_url }
      format.json { head :no_content }
    end
  end
end
