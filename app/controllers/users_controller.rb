class UsersController < ApplicationController
  def new 
    #creates a new User instance
    @user = User.new
  end
  
  def create 
    #creates a new User instance and attempts to save it to the db
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end
  
  def index
    @users = User.all
  end
  
  def show 
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
  end
  
  def delete
    User.destroy(params[:id])
  end
  
  private
    def user_params
      params.require(:user).permit(:petal_id,:access_token,:provider,
                                     :email,:pass,:name)
    end
end
