class Auction < ActiveRecord::Base
  attr_accessible :content, :user_id
  attr_accessor :possible_status

  belongs_to :user
  validates :user_id, presence: true

	possible_status = {"For Sale" => true, "Sold" => false, "Bought" => false}
	
	#getter
	def status
		self[:possible_status]
	end

	#setter
	def status=(status, value)
		self[:possible_status[status]] = value
	end
end
