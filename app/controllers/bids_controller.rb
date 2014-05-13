class BidsController < ApplicationController
  
  layout 'admin'

  def show
    #@ad = Ad.find(params[:ad_id])
    @bid = Bid.find(params[:id])
  end

  def new
    #@ad = Ad.find(params[:ad_id])
    #@bid = @ad.bids.build
    @bid = Bid.new
  end

  #def create
    #@ad = Ad.find(params[:ad_id])
    
    #@bid = Bid.new(bid_params)

    #if @bid.save
      #flash[:notice] = "Ads created successfully"
      #redirect_to ads_url
      #else
      #render('new')
      #end
  #end
  
  def create
      @bid = Bid.new(params[:bid].permit!) 
      if @bid.save
        flash[:notice] = "Bid created successfully"
        redirect_to ads_url
      else
        render('new')
      end
    end
  
  def show_bid
  end

  private

    def bid_params
      #params[:bid][:user_id] = current_user.id

      params.require(:bid).permit(:amount)
      #params[:bid].permit(:amount, :ad_id)
    end

    #def set_bid
    # @bid = Bid.find(params[:id])
    #end
    
end
