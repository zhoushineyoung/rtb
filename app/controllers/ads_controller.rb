class AdsController < ApplicationController
  
  layout 'admin'
  
  def index
    @ads = Ad.all
  end
  
  def listing
      @result = nil
    
      if !params[:amount].blank? || !params[:district].blank? || !params[:type].blank?
          unless params[:amount].blank?
            @amount = Ad.where(:baseamount => params[:amount])
            @result = @amount.uniq  
          end
        
          unless params[:district].blank?
            @district = Ad.where(:district_id => params[:district])
            @result = @district.uniq 
          end
        
          unless params[:type].blank?
            @type = Ad.where(:type_id => params[:type])
            @result = @type.uniq
          end
      else
          @result = Ad.all  
      end 
    
      @ads = @result
      render :action => 'index'
      # render :json => @result 
    end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
    #@ad.bid.build
  end

  def create
    @ad = Ad.new(ad_params)

    #if @ad.amount.empty?
    #  @ad.amount = @ad.baseamount
    #end

    if @ad.save
      flash[:notice] = "Ads created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])

    if @ad.update_attributes(ad_params)
      flash[:notice] = "Ads updated successfully"
      redirect_to(:action => 'show', :id => @ad.id)
    else
      render('edit')
    end
  end

  def delete
    @ad = Ad.find(params[:id])
  end

  def destroy
    ad = Ad.find(params[:id]).destroy
    flash[:notice] = "Ads deleted successfully"
    redirect_to(:action => 'index')
  end

  private 

  def ad_params
    #params[:item][:user_id] = current_user.id
    params.require(:ad).permit(:name, :desc, :baseamount, :amount, :address, :startdate, :enddate, :type_id, :district_id, 
      :duration_id, :grade_id, :format_id)
  end


end
