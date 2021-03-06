class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  	@auctions = @user.auctions
  end

  def index
  	@users = User.all
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      sign_in @user
      redirect_to @user
    else
      render 'fail'
    end
  end
end
