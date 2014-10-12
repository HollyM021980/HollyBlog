class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post)
  end

  def new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def destroy
    comment.find(params[:id]).destroy
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :author_id, :post_id)
  end
end
