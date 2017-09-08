class BlogsController < ApplicationController
  layout :check_layout 
  
  def new
    @id = params[:id] 
    @blog =Blog.new
  end
  def create
    @blog =Blog.new(blog_param)
    
    if @blog.save
     flash[:success] = "Succesfully submitted!"
     @blog = Blog.all
     render 'show'
    else
      @error = @blog.errors
          render 'new'
    end
  end
  
  def edit
        @blog = Blog.find(params[:id])
  end

  def update
    @blog =Blog.find(params[:blog][:id])
    if @blog.update_attributes(blog_param)
       flash[:success] = "Successfully updates!"
       @blog = Blog.all
       render 'show'
    else
       @err = @blog.errors
       render 'edit' 
    end
  end
  def delete
    @blog = Blog.find(params[:id])
    if @blog.destroy
      redirect_to :action=>"show"
    else
    @err = @blog.errors
     render 'show'
   end
  end
  def show
    @blog = Blog.all
  end
  def blogList
    @blog = Blog.all
  end
  private
  def blog_param
    return params.require(:blog).permit(:id,:title,:description)
  end
end
