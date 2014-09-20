class SessionsController < ApplicationController
  def login
  #Login Form
  end
before_filter :authenticate_user, :only => [:home, :profile, :setting, :changeUser,:share]
before_filter :save_login_state, :only => [:login, :login_attempt]
  def login_attempt
  authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
    session[:user_id] = authorized_user.id
    flash[:notice] = "Welcome #{authorized_user.username}"
    flash[:color] = "valid"
    redirect_to(:action => 'home')
    else
    flash[:notice] = "Invalid Username or Password"
    flash[:color]= "invalid"
    render "login"  
    end
  end
  def logout
  session[:user_id] = nil
      flash[:notice] = "You have been successfully logged out."
    flash[:color] = "valid"
  redirect_to :action => 'login'
  end
  def home
#    @leader = User.order("highest3 DESC").limit(10)
   @leader = User.all
   @length = @leader.size
  end
  def profile
  end

  def setting
  end

  def edit_q
    @current_user = User.find session[:user_id]
  end
  def edit_u
    @current_user = User.find session[:user_id]
  end
  def tq
      @current_user = User.find session[:user_id]
  end
  def quiz
  end
  def changeUser
  if session[:user_id]
    @current_user = User.find session[:user_id]
    if User.authenticate(@current_user.username,params[:password])
        connection = ActiveRecord::Base.connection
        if params[:pass].length>5 && params[:pass].length<20 
        connection.execute("UPDATE users SET password=\""+params[:pass]+"\" WHERE username=\""+@current_user.username+"\";") 
        
        flash[:notice] = "successfully updated"
        flash[:color] = "valid"
      else
        flash[:notice] = "Check length of pass"
        flash[:color] = "invalid"
      end
        if params[:email].length>5 && params[:email].length<30 
        connection.execute("UPDATE users SET email=\""+params[:email]+"\" WHERE username=\""+@current_user.username+"\";") 
      end

        redirect_to :action => 'home'
    else
        flash[:notice] = "Wrong Passowrd"
        flash[:color] = "invalid"
        redirect_to :action => 'home'
    end
  else
        flash[:notice] = "Something was wrong :/"
        flash[:color] = "invalid"
        redirect_to :action => 'home'
  end
  end

 def new
end
def create
auth = request.env["omniauth.auth"]
puts YAML::dump(auth)
user = User.where(:email => auth['info']['email']).first || User.create_with_omniauth(auth)
session[:user_id] = user.id
redirect_to :login, :notice => "Signed in!"
end
def destroy
reset_session
redirect_to root_url, notice: 'Signed out!'
end

end
