class Auction < ActiveRecord::Base
  attr_accessible :content, :user_id, :status

 	belongs_to :user
	validates :user_id, :presence => true


end
 