class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to user_dashboard_path
    else
      flash[:notice] = "That is not a valid user."  # can i iterate through error messages and display each one as a flash notice?
      render :new
    end
  end

  def show
    @user = User.find(user_params)

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user = User.update(user_params)
      redirect_to user_dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

private
  # 
  # def set_user
  #   @user = User.find(params[:id])
  # end

  def user_params
    params.required(:user).permit(:first_name, :last_name, :email, :password, :cat_1, :cat_2, :cat_3)
  end

end
