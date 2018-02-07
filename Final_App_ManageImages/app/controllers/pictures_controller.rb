class PicturesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_picture, only: [:show, :edit, :update, :destroy]
  #index  

  def index 

    @pictures = Picture.publics.order("created_at DESC").page(params[:page]).per_page(6)
  
  end

  #show
  def show 

  end 

  #new 
  def new
    @picture = Picture.new
  end 


  #create
  def create
    @picture = Picture.new(picture_params)

    if @picture.save
    flash[:notice] = "Add picture successful!"
      redirect_to @picture
    else
      render 'new'
    end
  end

  #edit 
  def edit 


  end 

  #update
  def update
    if @picture.update(picture_params)
      flash[:notice] = "Update picture successful!"
      redirect_to @picture
    else
      render 'edit'
    end 
  end 
  
  # destroy
  def destroy
    @picture.destroy
    redirect_to pictures_path
  end

  private

  def find_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:title, :description, :image, :user_id, :is_public)
  end

end
