class UsersController < ApplicationController
  def new
    @title = "Sign up"
  end
  def show
    @title = "Sign up"
    @user = User.find(params[:id])
  end

end
