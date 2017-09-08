class VideosController < ApplicationController
  layout :check_layout 
  def new
    @video =Video.new
  end
  def create
    @video =Video.new(video_param)
    
    if @video.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @video.errors
          render 'new'
    end
  end
  
  def edit
        @video = Video.find(params[:id])
  end

  def update
    @video =Video.find(params[:video][:id])
    if @video.update_attributes(video_param)
       flash[:success] = "Succesfully Edited!"
         redirect_to request.referer
    else
       @err = @video.errors
       render 'edit' 
    end
  end
  def delete
    @video = Video.find(params[:id])
    if @video.destroy
      redirect_to :action=>"show"
    else
    @err = @video.errors
     render 'show'
   end
  end
  def show
    @video = Video.all
  end

  private
  def video_param
    return params.require(:video).permit(:id,:title,:video_length,:source,:transcript)
  end
end
