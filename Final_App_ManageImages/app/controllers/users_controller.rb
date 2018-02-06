class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :edit, :update, :destroy]


def index
	@user = User.all
end


def new 
	@user = User.new
end


def show 
	@user = User.find(params[:id])
end


def create
	@user = User.new(user_params)
	if @user.save
		redirect_to @user.save
	else
		render 'new'
end


def update 

end

def destroy
	
	
end


  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
		params.require(:user).permit(:username)
	end

end
