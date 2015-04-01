class LikesController < ApplicationController
  before_action :authenticate_user!

  def update
    current_user.liked_uploads << current_upload
    redirect_to root_path, notice: "You liked a file"
  end

protected

  def current_upload
    @upload ||= Upload.find(params[:upload_id])
  end
end
