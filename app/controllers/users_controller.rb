class UsersController < ApplicationController
  def new
  end

  def show
  	@user = User.find(params[:id])
  	@auctions = @user.auctions
  end

  def index
  	@users = User.all
  end
end
