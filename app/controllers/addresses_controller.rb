class AddressesController < ApplicationController
layout :check_layout 

  def new
    @user_id = params[:id]
    @address =Address.new
  end
  def create
    @address =Address.new(address_param)
    
    if @address.save
     flash[:success] = "Succesfully submitted!"
     redirect_to  request.referer
    else
      @error = @address.errors
      redirect_to  request.referer
    end
  end
  
  def edit
        @address = Address.find(params[:id])
  end

  def update
    @address =Address.find(params[:address][:id])
    if @address.update_attributes(address_param)
       flash[:success] = "Successfully updates!"
      @adress =Address.all
       render 'show'
    else
       @err = @address.errors
       render 'edit' 
    end
  end
  def delete
    @address = Address.find(params[:id])
    if @address.destroy
      redirect_to :action=>"show"
    else
    @err = @address.errors
     render 'show'
   end
  end
  def show
    @address = Address.all
  end

  private
  def address_param
    return params.require(:address).permit(:id,:line1,:line2,:town,:district,:city,:state,:country,:pincode,:landline_number,:user_id)
  end
end
