class UsersController < ApplicationController
  def index
    @users = User.all
    @chefs = User.where(chef:true)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.chef = true
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :qualification, :short_bio, :price, :cuisine, :profile_picture, :image1, :image2, :image3)
  end
end
