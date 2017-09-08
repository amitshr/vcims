class KlassesController < ApplicationController
  layout :check_layout 
  def new

    @klass =Klass.new
  end
  def create
    @klass =Klass.new(klass_param)
    
    if @klass.save
     flash.now[:success] = "Succesfully submitted!"
     @klass = Klass.all
     render 'show'
    else
      @error = @klass.errors
          render 'new'
    end
  end
  
  def edit
        @klass = Klass.find(params[:id])
  end

  def update
    @klass =Klass.find(params[:klass][:id])
    if @klass.update_attributes(klass_param)
       flash.now[:success] = "Successfully updated!"
       @klass = Klass.all
     render 'show'
    else
       @err = @klass.errors
       
       render 'edit' 
    end
  end
  def delete
    @klass = Klass.find(params[:id])
    if @klass.destroy
      redirect_to :action=>"show"
    else
    @err = @klass.errors
     render 'show'
   end
  end
  def show
    @klass = Klass.all
  end

  private
  def klass_param
    return params.require(:klass).permit(:id,:title)
  end
end
