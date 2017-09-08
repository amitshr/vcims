class NewsesController < ApplicationController
   layout :check_layout 
  def new 
    @news =News.new
  end
  def create
    @news =News.new(news_param)
    
    if @news.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @news.errors
          render 'new'
    end
  end
  
  def edit
        @news = News.find(params[:id])
  end

  def update
    @news =News.find(params[:news][:id])
    if @news.update_attributes(news_param)
       flash[:success] = "Successfully updates!"
        redirect_to request.referer
    else
       @err = @news.errors
       render 'edit' 
    end
  end
  def delete
    @news = News.find(params[:id])
    if @news.destroy
      redirect_to :action=>"show"
    else
    @err = @news.errors
     render 'show'
   end
  end
  def show
    @news = News.all
  end
  def profile
    @id = params[:id]
    @news =News.find(@id)
  end
  private
  def news_param
    return params.require(:news).permit(:id,:user_id,:content,:image_id)
  end
end

