class SessionsController < ApplicationController

    def create 
        @user = User.find_by(name: params[:name])
    
        if @user && @user.authenticate(params[:password])
          redirect_to @user
        else 
          redirect_to login_path
      end 
    
      def login
      end
    
      def login_attempt
        authorized_user = User.authenticate(params[:name],params[:login_password])
        if authorized_user
          flash[:notice] = "Welcome again, you logged in as #{authorized_user.name}"
          redirect_to(:action => 'home')
        else
          flash[:notice] = "Invalid Username or Password"
          flash[:color]= "purple"
          render "login"	
        end
      end
    
      def home
        render :home
      end
      
      def signup
      end 
    
      def logout
        session[:user_id] = nil
        redirect_to :action => 'login'
        end
      end 

end 