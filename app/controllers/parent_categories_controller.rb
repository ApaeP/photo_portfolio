class ParentCategoriesController < ApplicationController
  before_action :set_parent_cat, only: :show
  skip_before_action :authenticate_user!, only: :show

  def show
    @child_categories = @parent.child_categories
  end

  def index

  end

  def create

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_parent_cat
    @parent = ParentCategory.find(params[:id])
  end
end
