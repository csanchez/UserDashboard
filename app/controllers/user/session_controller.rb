class User::SessionController < ApplicationController
	skip_before_filter :require_login, except: [:destroy]
  
  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:login], params[:password])
        #redirect_back_or_to(:users, notice: 'Login successful')
        redirect_to user_dashboard_path
      else
        flash.now[:alert] = 'Usuario o password incorrecto'
        redirect_to user_login_path
      end
  end

  def destroy
  	logout
    ledirect_to login_path
  end
end
