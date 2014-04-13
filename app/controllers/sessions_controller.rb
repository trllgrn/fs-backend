class SessionsController < ApplicationController
  def create
    #render :json => auth_hash[:info]
    @user = User.find_or_create_from_auth_hash(auth_hash)
    #self.current_user = @user
    redirect_to '/users'
  end
  
  protected
  
  def auth_hash
    request.env['omniauth.auth']
  end
end
