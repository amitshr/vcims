class BatchesController < ApplicationController
  layout :check_layout
  def new
    @id = params[:id] 
    @batch =Batch.new
  end
  def create
    @batch =Batch.new(batch_param)
    
    if @batch.save
     flash.now[:success] = "Succesfully submitted!"
     @batch=Batch.all
     render 'show'
    else
      @error = @batch.errors
          render 'new'
    end
  end
  
  def edit
        @batch = Batch.find(params[:id])
  end

  def update
    @batch =Batch.find(params[:batch][:id])
    if @batch.update_attributes(batch_param)
       flash[:success] = "Successfully updates!"
        @batch=Batch.all
       render 'show'
    else
       @err = @batch.errors
       render 'edit' 
    end
  end
  def delete
    @batch = Batch.find(params[:id])
    if @batch.destroy
      redirect_to :action=>"show"
    else
    @err = @batch.errors
     render 'show'
   end
  end
  def show
    @batch = Batch.all
  end
  def profile
    @batch = Batch.find(params[:id]) 
  end
  def batchList
    @center =Center.find_by_user_id(User.find_by_email(session[:email]).id)
    @room =Room.find_by_center_id(@center.id)
    @batch = Batch.where("room_id = #{@room.id}")
    
  end
  private
  def batch_param
    return params.require(:batch).permit(:room_id,:batch_name,:course_id,:sesion_id,:status,:staring_date,:filled_seats)
  end
end
