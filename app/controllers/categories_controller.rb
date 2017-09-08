class CategoriesController < ApplicationController
  layout :check_layout
  def new
    @category =Category.new
  end
  def create
    @category =Category.new(category_param)
    
    if @category.save
     flash[:success] = "Succesfully submitted!"
  redirect_to request.referer
    else
      @error = @category.errors
          render 'new'
    end
  end
  
  def edit
        @category = Category.find(params[:id])
  end

  def update
    @category =Category.find(params[:category][:id])
    if @category.update_attributes(category_param)
       flash[:success] = "Successfully updated!"
         redirect_to request.referer
    else
       @err = @category.errors
       render 'edit' 
    end
  end
  def delete
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to :action=>"show"
    else
    @err = @category.errors
     render 'show'
   end
  end
  def show
    @category = Category.all
  end
  def signup
    
  end
  private
  def category_param
    return params.require(:category).permit(:id,:category_name)
  end
end
