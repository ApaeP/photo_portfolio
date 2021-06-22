class ChildCategoriesController < ApplicationController
  def show
    @child_category = ChildCategory.find(params[:id])
    @photos = @child_category.photos
  end
end
