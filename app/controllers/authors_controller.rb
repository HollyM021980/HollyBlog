class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def index
    @authors = Author.all
  end

  private
  def set_author
   @author = Author.find(params[:id])
  end

  def post_params
    params.require(:author).permit(:name, :title)
  end
end
