class SessionsController < ApplicationController

def new
end

def show
    if !current_user
        redirect_to "/login"
    else
        @user = current_user
    end
end

def create
    if params[:name] == ""
        redirect_to "/login"
    elsif params[:name]
        session[:name] = params[:name]
    else
        redirect_to "/login"
    end
end

def destroy
    session.clear
    redirect_to "/"
end


end
