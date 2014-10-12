class PostsController < ApplicationController
  before_action :set_post, only: [ :edit, :show, :update ]

  def index
    @posts = Post.order(:created_at)
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: 'post was successfully saved'
    else
      redirect_to :edit
    end
  end

  private
  def set_post
   @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:subject, :content, :created_at, :post_id)
  end

end
