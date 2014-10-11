class AuthorsController < ApplicationController
  before_action :set_author, only: [:destroy, :edit, :update]

  def index
    @authors = Author.all
    @author = Author.new
  end

  def edit
  end

  def create
    @author = Author.create(author_params)
    redirect_to authors_path
  end

  def update
    if @author.update(author_params)
      redirect_to authors_path, notice: 'author was successfully saved'
    else
      redirect_to :edit
    end
  end

  def destroy
    @author.destroy
    redirect_to authors_path, notice: 'author was successfully deleted'
  end

  private
  def set_author
   @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :title)
  end
end
