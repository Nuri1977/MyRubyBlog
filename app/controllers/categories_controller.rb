class CategoriesController < ApplicationController
  def index
    @categories=Category.all
  end

  def show
    @category=Category.find(params[:id])
    @title = @category.name
    @id=@category.id
    @posts=Post.all
    @filter_posts=@posts.where(:category_id => @id)
    
  end



end
