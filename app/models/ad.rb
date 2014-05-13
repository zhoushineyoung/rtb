class Ad < ActiveRecord::Base
	
	has_many :bids
	belongs_to :duration
	belongs_to :grade
	belongs_to :type
	belongs_to :format
	belongs_to :district
	#def check_highest_bid
    #	highest_bid = self.bids.order("amount DESC").first.amount rescue 0
    #	self.price = highest_bid
    #	save
  	#end
end
