class UsersController < ApplicationController
  def index
    @title = "Index"
    @users = User.all
  end
  def new
    @title = "Sign up"
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    render 'index' if @user.nil?
    @title = @user.name
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App"
      redirect_to @user
    else
      @title = "Sign up"
      @user.password = ""
      @user.password_confirmation = ""
      render 'new'
    end
  end
end
