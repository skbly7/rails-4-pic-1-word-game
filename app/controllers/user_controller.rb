class UserController < ApplicationController
	def new
		@user = User.new
	end
	def user_params
		params.require(:user).permit(:username, :email, :password, :highest1, :highest2, :highest3, :facebook, :name, :pass)
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Registration successful"
			flash[:color]= "valid"
			render "login"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
			render "new"
		end
		
	end
	def match_password(login_password="")
		password == login_password
	end

end