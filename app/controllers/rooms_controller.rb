class RoomsController < ApplicationController
  layout :check_layout 
  def new

    @room =Room.new
  end
  def create
    @room =Room.new(room_param)
    
    if @room.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @room.errors
      render 'new'
    end
  end
  
  def edit
        @room = Room.find(params[:id])
  end

  def update
    @room =Room.find(params[:room][:id])
    if @room.update_attributes(room_param)
       flash[:success] = "Successfully updates!"
      redirect_to request.referer
    else
       @err = @room.errors
       render 'edit' 
    end
  end
  def delete
    @room = Room.find(params[:id])
    if @room.destroy
      redirect_to :action=>"show"
    else
    @err = @room.errors
     render 'show'
   end
  end
  def show
    @room = Room.all
  end
  
  private
  def room_param
    return params.require(:room).permit(:center_id,:seats,:room_number)
  end
end
