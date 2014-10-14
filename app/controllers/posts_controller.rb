class PostsController < ApplicationController
  before_action :set_post, only: [ :edit, :show, :update ]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
    @comment = Comment.new(post_id: @post.id)
    @comments = @post.comments
  end

  def edit
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
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
   @comments = @post.comments
  end

  def post_params
    params.require(:post).permit(:subject, :content, :created_at, :author_id, :category_id)
  end

  def posts_by_category(all_posts)
    # all_posts.map {}
  end

end
