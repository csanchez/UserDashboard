class SessionController < ApplicationController
	skip_before_filter :require_login, except: [:destroy]
  
  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:user][:email], params[:user][:password])
        if(@user.is_guest)
          redirect_back_or_to(guest_dashboard_path(@user), notice: 'Login successful')
        else

        end
        
      else
        flash.now[:alert] = 'Usuario o password incorrecto'
        redirect_to login_path
      end
  end

  def destroy
  	logout
    ledirect_to login_path
  end
end
