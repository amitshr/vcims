class ChaptersController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @book=Book.find(@id)
    @chapter =Chapter.new
  end
  def create
    @chapter =Chapter.new(chapter_param)
    
    if @chapter.save
     flash[:success] = "Succesfully submitted!"

     redirect_to request.referer
    else
      @error = @chapter.errors
      @book=Book.find(@chapter.book_id)
          render 'new'
    end
  end
  
  def edit
        @chapter = Chapter.find(params[:id])
  end

  def update
    @chapter =Chapter.find(params[:chapter][:id])
    if @chapter.update_attributes(chapter_param)
       flash[:success] = "Successfully updates!"
        redirect_to request.referer
    else
       @err = @chapter.errors
       render 'edit' 
    end
  end
  def delete
    @chapter = Chapter.find(params[:id])
    if @chapter.destroy
      redirect_to :action=>"show"
    else
    @err = @chapter.errors
     render 'show'
   end
  end
  def show
    @chapter = Chapter.all
  end

  private
  def chapter_param
    return params.require(:chapter).permit(:id,:book_id,:title,:summary,:chapter_number)
  end
end
