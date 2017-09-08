class VideosController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @video =Video.new
  end
  def create
    @video =Video.new(video_param)
    
    if @video.save
     flash[:success] = "Succesfully submitted!"
     @video =Video.all
     render 'show'
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
       flash[:success] = "Successfully updates!"
       @video =Video.all
       render 'show'
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
