class PostsController < ApplicationController

  def index
    @posts = Post.order(:created_at)
  end

  def show
  end

  private
  def set_post
   @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:subject, :content, :created_at, :author_id)
  end

end
