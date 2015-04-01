class UploadsController < ApplicationController
  before_action :authenticate_user!

  def index
    @uploads = current_user.uploads
  end

  def new
    @upload = current_user.uploads.build
  end

  def create
    @upload = current_user.uploads.build(upload_params)

    if @upload.save
      redirect_to uploads_path, notice: "File has been uploaded"
    else
      render :new
    end
  end

protected

  def upload_params
    params.require(:upload).permit(:description, :asset, :tag_list)
  end
end
