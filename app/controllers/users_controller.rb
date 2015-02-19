class UsersController < ApplicationController

  before_filter :authenticate_user!, except: [:index]

  def index
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update user_params
      flash[:notice] = "Your profile has been updated."
      redirect_to user_path
    else
      flash[:alert] = "Something went wrong. Please try your update again."
      render 'edit'
    end
  end

  def show
    @user = User.find params[:id]
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :zipcode)
  end
end