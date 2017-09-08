class SesionsController < ApplicationController
layout :check_layout  
  def new
    @sesion =Sesion.new
  end
  def create
    @sesion =Sesion.new(sesion_param)
    
    if @sesion.save
     flash[:success] = "Succesfully submitted!"
     @sesion=Sesion.all
     render 'show'
    else
      @error = @sesion.errors
      render 'new'
    end
  end
  
  def edit
        @sesion = Sesion.find(params[:id])
  end

  def update
   
    @sesion = Sesion.find(params[:sesion][:id])
   
    if @sesion.update_attributes(sesion_param)
       flash[:success] = "Successfully updated!"
       @sesion =Sesion.all
       render 'show'
    else
       @err = @sesion.errors
       render 'edit' 
    end
  end
  def delete
    @sesion = Sesion.find(params[:id])
    if @sesion.destroy
      redirect_to :action=>"show"
    else
    @err = @sesion.errors
     render 'show'
   end
  end
  def show
    @sesion = Sesion.all
  end

  private
  def sesion_param
    return params.require(:sesion).permit(:id,:title,:from,:to)
  end
end
