class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = Category.all
    @category = Category.new
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, notice: 'category was successfully saved'
    else
      redirect_to :edit
    end
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'category was successfully deleted'
  end

  private
  def set_category
   @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end

end
