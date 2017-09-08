class BoardsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @board =Board.new
  end
  def create
    @board =Board.new(board_param)
    
    if @board.save
     flash.now[:success] = "Succesfully submitted!"
     @board = Board.all
     render 'show'
    else
      @error = @board.errors
          render 'new'
    end
  end
  
  def edit
        @board = Board.find(params[:id])
  end

  def update
    @board =Board.find(params[:board][:id])
    if @board.update_attributes(board_param)
       flash[:success] = "Successfully updates!"
       @board = Board.all
       render 'show'
    else
       @err = @board.errors
       render 'edit' 
    end
  end
  def delete
    @board = Board.find(params[:id])
    if @board.destroy
      redirect_to :action=>"show"
    else
    @err = @board.errors
     render 'show'
   end
  end
  def show
    @board = Board.all
  end

  private
  def board_param
    return params.require(:board).permit(:id,:state,:short_name,:full_name)
  end
end
