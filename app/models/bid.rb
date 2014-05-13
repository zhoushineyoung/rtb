class Bid < ActiveRecord::Base
	belongs_to :ad
  
  belongs_to :user
	

	#validate :check_if_highest_bid

	#after_save :update_item
	#after_destroy :update_item

	#def update_item
	#	self.item.check_highest_bid
	#end     

  	#def check_if_highest_bid
    # 	errors.add(:amount, "must be higher than current bid") unless self.item.price < self.amount
  	#end
end
