class PostsController < ApplicationController
  layout :check_layout
  def new
    @user_id=User.find_by_category_id("#{session[:category_id]}").id 
    @id = params[:id]
    @post =Post.new
  end
  def create
    @post =Post.new(post_param)
    
    if @post.save
     flash[:success] = "Succesfully submitted!"
     
     render :action=>"profile",:id=>@post.id
    else
      @error = @post.errors
          render 'new'
    end
  end
  
  def edit
        @user_id=User.find_by_category_id("#{session[:category_id]}").id 
        @id = params[:id]
        @post = Post.find(params[:id])
  end

  def update
    @post =Post.find(params[:post][:id])
    if @post.update_attributes(post_param)
       flash[:success] = "Successfully updates!"
       @post =Post.all
     render 'show'
    else
       @err = @post.errors
       render 'edit' 
    end
  end
  def delete
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to :action=>"show"
    else
    @err = @post.errors
     render 'show'
   end
  end
  def show
    @post = Post.all
    @id =User.find_by_category_id("#{session[:category_id]}").id
  end
  def profile
    @id =params[:id]
    @post= Post.find(params[:postid])
    @image=Image.find(@post.image_id)
    
  end
  def specificPost
    
    @post =Post.all    
  end
  private
  def post_param
    return params.require(:post).permit(:id,:content,:user_id,:blog_id,:image_id,:status)
  end
end
