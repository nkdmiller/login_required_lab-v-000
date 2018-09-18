class SessionsController < ApplicationController
    skip_before_filter :verify_authenticity_token  
    def home

        @current_user = current_user
        render :home

    end
    def new
    end
 
    def create
      if params[:name].blank?
        redirect_to "/sessions/new"
      else
        session[:name] = params[:name]
        redirect_to "/"
      end
    end
    
    def destroy
      session.delete :name
      redirect_to '/'
        # nothing to do here!
    end
end
