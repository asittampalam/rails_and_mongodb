class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success]= "Registration erfolgreich!"
      redirect_to "/"
    else
      flash[:error] = "Fehlerhafte Daten!"
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