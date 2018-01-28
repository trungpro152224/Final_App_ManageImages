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

end

def create

end

def update 

end

def destroy
	
end


  private

    def find_user
      @user = User.find(params[:id])
    end


end
