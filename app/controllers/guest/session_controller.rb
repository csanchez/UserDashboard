class Guest::SessionController < ApplicationController
	skip_before_filter :require_login, except: [:destroy]
  
  def new
  	@guest = Guest.new
  end

  def create
  	if @guest = login(params[:login], params[:password])
        #redirect_back_or_to(:users, notice: 'Login successful')
        redirect_to guest_dashboard_path
      else
        flash.now[:alert] = 'Usuario o password incorrecto'
        redirect_to guest_login_path
      end
  end

  def destroy
  	logout
    ledirect_to login_path
  end
end
