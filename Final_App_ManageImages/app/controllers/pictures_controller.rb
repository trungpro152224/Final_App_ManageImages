class PicturesController < ApplicationController

	before_action :find_picture, only: [:show, :edit, :update, :destroy]
	#index	
	def index 
		@picture = Picture.all.order("create_at DESC")


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
			redirect_to @picture
		else
			render 'new'
	end

	#edit 
	def edit 

	end 

	#update
	def update
		if @picture.update(picture_params)
			redirect_to @picture
		else
			render 'edit'
	end 
	
	#destroy
	def destroy
		@picture.destroy
		redirect_to pictures_path
	end 


	private

	def find_picture
		@picture = Picture.find(params[:id])
	end

	def picture_params
		params.require(:picture).permit(:title, :description)
	end

end
