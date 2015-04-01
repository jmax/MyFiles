class HomeController < ApplicationController
  def index
    @uploads = Upload.all
  end
end
