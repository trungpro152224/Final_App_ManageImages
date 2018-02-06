class AnbumsController < ApplicationController

	def index 
		@anbums = Anbum.all
	end

	def new 
		@anbum = Anbum.new
	end

	def create
		@anbum = Anbum.new(anbum_params)

		if @anbums.save
			redirect_to @anbum
		else
			render 'new'
		end
	end

	def update

	end

	def destroy 

	end

end
