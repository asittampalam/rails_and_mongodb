class SessionsController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]
  def new
  end

  def create
    user = User.where(username: params[:username]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success]= "Erfolgreich eingeloggt!"
      redirect_to index_path
    else
      flash[:error] = "Falsche Login-Daten!"
      #render "new"
      redirect_to index_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success]= "Erfolgreich abgemeldet."
    redirect_to "/"
  end
end
