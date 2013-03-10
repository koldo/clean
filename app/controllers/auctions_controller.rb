class AuctionsController < ApplicationController
  def new
  end

  def show
		@auctions = Auction.find(params[:id])
		@user = @auctions.user
  end

  def index
  	@auctions = Auction.all
  end
end
