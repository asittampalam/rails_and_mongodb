class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(username: params[:username]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to index_path,
                  notice: "Erfolgreich eingeloggt!"
    else
      flash.now.alert = "Falsche Login-Daten!"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path,
                notice: "Erfolgreich abgemeldet."
  end
end
