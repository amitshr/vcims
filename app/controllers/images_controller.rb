class ImagesController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @image =Image.new
  end
  def create
    @image =Image.new(image_param)
    
    if @image.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @image.errors
          render 'new'
    end
  end
  
  def edit
        @image = Image.find(params[:id])
  end

  def update
    @image =Image.find(params[:image][:id])
    if @image.update_attributes(image_param)
       flash[:success] = "Successfully updates!"
       redirect_to request.referer
    else
       @err = @image.errors
       render 'edit' 
    end
  end
  def delete
    @image = Image.find(params[:id])
    if @image.destroy&& @image.remove_image
      redirect_to :action=>"show"
    else
    @err = @image.errors
     @image=Image.all
     render 'show'
   end
  end
  def show
    @image = Image.all
  end

  def createNext
     @image =Image.new(image_param)  
    if @image.save
      redirect_to request.referer
    else
      @error = @image.errors
        redirect_to request.referer
    end
  end

  private
  def image_param
    return params.require(:image).permit(:id,:description,:size,:image)
  end
end
