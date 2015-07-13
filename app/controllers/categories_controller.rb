class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = Category.create(cat_params)
    redirect_to organisations_path
  end

  def cat_params
    params.require(:category).permit(:name)
  end
end
