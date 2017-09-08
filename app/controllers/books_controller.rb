class BooksController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @book =Book.new
  end
  def create
    @book =Book.new(book_param)
    
    if @book.save
     flash[:success] = "Succesfully submitted!"

       redirect_to request.referer
    else
      @error = @book.errors

          render 'new'
    end
  end
  
  def edit
        @book = Book.find(params[:id])
  end

  def update
    @book =Book.find(params[:book][:id])
    if @book.update_attributes(book_param)
       flash[:success] = "Successfully updates!"
           redirect_to request.referer
    else
       @err = @book.errors
       render 'edit' 
    end
  end
  def delete
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to :action=>"show"
    else
    @err = @book.errors
     render 'show'
   end
  end
  def show
    @book = Book.all
  end

  private
  def book_param
    return params.require(:book).permit(:id,:title,:summary,:author,:subject_id,:klass_id,:board_id)
  end
end
