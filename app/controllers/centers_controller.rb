class CentersController < ApplicationController
  layout :check_layout 
  def new
    category_id =Category.find_by_category_name("center").id
    @user = User.where("category_id = #{category_id}")
    @center =Center.new
  end
  def create
    @center =Center.new(center_param)
    if @center.save
     flash[:success] = "Succesfully submitted!"
     
    redirect_to request.referer
    else
      @error = @center.errors
      @center =Center.all
      render 'show'
    end
  end
  
  def edit
        @center = Center.find(params[:id])
  end

  def update
    @center =Center.find(params[:center][:id])
    if @center.update_attributes(center_param)
       flash[:success] = "Successfully updates!"
           redirect_to request.referer
    else
        @err = @center.errors
       render 'edit' 
    end
  end
  def delete
    @center = Center.find(params[:id])
    if @center.destroy
      redirect_to :action=>"show"
    else
    @err = @center.errors
     render 'show'
   end
  end
  def show
    @center = Center.all
  end
  def profile
    @id =Center.find_by_user_id(User.find_by_email(session[:email]).id).id
    @center =Center.find(@id)
  end

  private
  def center_param
    return params.require(:center).permit(:id,:user_id,:center_name,:center_incharge,:mobile_number)
  end
end
