class UsersController < ApplicationController
	skip_before_filter :require_login, only: [:new, :create]
	
	def new
		@user = User.new
	end


	def create
    @user = User.new(guest_params)
    @user.is_guest = true
    
      if @user.save
        redirect_to guest_login_path
      else
        render :new 
      end
    
  end





private

def guest_params
      params.require(:user).permit(:login,:email, :password, :password_confirmation)
end


end
