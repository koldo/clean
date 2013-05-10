class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  
  has_many :auctions
end

#methods created through the relation with auctions

#              Method                                 Purpose
#---------------------------------------------------------------------------------------
#    user.auctions	            	Return an array of the user’s auctions
#    user.auctions.create(arg)		Create a micropost (user_id = user.id)
#    user.auctions.create!(arg)		Create a micropost (exception on failure)
#    user.auctions.build(arg)	    Return a new Micropost object (user_id = user.id)

