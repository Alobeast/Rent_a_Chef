class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :edit, :update, :show ]

  def index
    @users = User.all

    @query = params[:query]

    if params[:query].present?

      @chefs = User.search_by_cuisine(@query)
    else
      @chefs = User.where(chef:true)
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.chef = true
    @user.save

    redirect_to bookings_path
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
