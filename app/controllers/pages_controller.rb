class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @photospro = Photo.where(parent_category_id: ParentCategory.find_by(title: "Pro").id)
    @photosproject = Photo.where(parent_category_id: ParentCategory.find_by(title: "Projets").id)
  end
end
