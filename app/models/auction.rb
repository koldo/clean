class Auction < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :users

  validates :user_id, presence: true
end
