class PicturesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_picture, only: [:show, :edit, :update, :destroy]
	#index	

	def index 

		@pictures = Picture.all.order("created_at DESC").paginate(page: params[:page], per_page: 6)
	
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
		params.require(:picture).permit(:title, :description, :image)
	end

end
