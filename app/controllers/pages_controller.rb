class PagesController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @chapter = Chapter.find(@id)
    @page =Page.new
  end
  def create
    @page =Page.new(page_param)
    
    if @page.save
     flash[:success] = "Succesfully submitted!"
     @page= Page.all
     render 'show'
    else
      @error = @page.errors
          render 'new'
    end
  end
  
  def edit
        @page = Page.find(params[:id])
  end

  def update
    @page =Page.find(params[:page][:id])
    if @page.update_attributes(page_param)
       flash[:success] = "Successfully updates!"
       @page =Page.all
       render 'show'
    else
       @err = @page.errors
       render 'edit' 
    end
  end
  def delete
    @page = Page.find(params[:id])
    if @page.destroy
      redirect_to :action=>"show"
    else
    @err = @page.errors
     render 'show'
   end
  end
  def show
    @page = Page.all
  end

  private
  def page_param
    return params.require(:page).permit(:id,:chapter_id,:title,:sub_title,:page_number,:content)
  end
end
