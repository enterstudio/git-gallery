class UploadsController < ApplicationController
  before_filter :load_uploadable

  def index
    @uploads = @uploadable.uploads
  end

  # GET /uploads/new
  # GET /uploads/new.json
  def new
    @upload = @uploadable.uploads.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @upload }
    end
  end

  # GET /uploads/1/edit
  def edit
    @upload = Upload.find(params[:id])
  end

  # POST /uploads
  # POST /uploads.json
  def create
    @upload = @uploadable.uploads.new(params[:upload])

    if @upload.save
      redirect_to @uploadable
    else
      render :new
    end
  end

  # PUT /uploads/1
  # PUT /uploads/1.json
  def update
    @upload = Upload.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to @upload, notice: 'upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploads/1
  # DELETE /uploads/1.json
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy

    respond_to do |format|
      format.html { redirect_to uploads_url }
      format.json { head :no_content }
    end
  end

private
  
  def load_uploadable
    resource, id = request.path.split('/')[1,2]
    @uploadable = resource.singularize.classify.constantize.find(id)
  end

  # def load_uploadable
  #   klass = [Project, Feature].detect {|c| params["#{c.name.underscore}_id"]}
  #   @uploadable = klass.find(params["{klass.name.underscore}_id"])
  # end

end