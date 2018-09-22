class SessionsController < ApplicationController
<<<<<<< HEAD
    skip_before_filter :verify_authenticity_token  
    def home

        @current_user = current_user
        render :home

=======
    before_action :require_login
    skip_before_action :require_login, only: [:new, :home]
    skip_before_filter :verify_authenticity_token  
    def home
      if session[:name].blank? && params[:name].blank?
        redirect_to "/sessions/new"
      end
>>>>>>> 6174312e7bc598ba15e33036c0f0aededff16f60
    end
    def new
    end
 
    def create
<<<<<<< HEAD
      if params[:name].blank?
        redirect_to "/sessions/new"
      else
        session[:name] = params[:name]
        redirect_to "/"
      end
=======
        session[:name] = params[:name]
        redirect_to "/"
>>>>>>> 6174312e7bc598ba15e33036c0f0aededff16f60
    end
    
    def destroy
      session.delete :name
      redirect_to '/'
        # nothing to do here!
    end
<<<<<<< HEAD
=======
    
    def secret
    end
>>>>>>> 6174312e7bc598ba15e33036c0f0aededff16f60
end
