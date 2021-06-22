class PhotosController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save!
      redirect_to root_path
    else
      flash[:alert]= 'Photo non créée'
    end

  end

  def edit

  end

  def update

  end

  def destroy
    @photo.destroy
    render :index
  end

  private

  def set_antique
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :description, :photo, :parent_category, :child_category)
  end
end
