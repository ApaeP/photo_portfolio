class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @photospro = Photo.where(child_category: "Hôtels" || "Immobilier")
    @photosproject = Photo.where(child_category: "E-1" || "R2000" || "Micro-studio")
  end
end
