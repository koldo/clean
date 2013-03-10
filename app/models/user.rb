class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  has_many :auctions

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
 
  private
  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end


#methods created through the relation with auctions

#              Method                                 Purpose
#---------------------------------------------------------------------------------------
#    user.auctions	            	Return an array of the user’s auctions
#    user.auctions.create(arg)		Create a auctions (user_id = user.id)
#    user.auctions.create!(arg)		Create a auctions (exception on failure)
#    user.auctions.build(arg)	    Return a new Auction object (user_id = user.id)

