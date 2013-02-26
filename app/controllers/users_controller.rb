class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to "/",
                  notice: "Registration erfolgreich!"
    else
      flash.now.alert = "Fehlerhafte Daten!"
      render "new"
    end
  end

  def edit
  end

  def index
    @all_users = User.all
    unless user_signed_in?
      redirect_to login_path, alert:"Bitte anmelden."
    end
  end

end
