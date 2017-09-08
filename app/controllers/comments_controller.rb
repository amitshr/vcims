class CommentsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @post_id =params[:postid]
    @post =  Post.find(@post_id) #for showing post in new
    @comment_all=Comment.where("post_id = #{@post_id}") #for showing comments in new
    @comment =Comment.new
  end


  def create
    @comment =Comment.new(comment_param)
    if @comment.save
     flash[:success] = "Succesfully submitted!"
     redirect_to :controller=>"comments",:action => "new",:id => @comment.user_id,:postid=> @comment.post_id
    else
      @error = @comment.errors
      @id = @comment.user_id 
      @post_id = @comment.post_id
      @post =  Post.find(@comment.post_id)
      render 'new'
    end
  end
  
  def edit
        @comment = Comment.find(params[:id])
  end

  def update
    @comment =Comment.find(params[:comment][:id])
    if @comment.update_attributes(comment_param)
       flash[:success] = "Successfully updates!"
       @comment =Comment.all
       render 'show'
    else
       @err = @comment.errors
       render 'edit' 
    end
  end
  def delete
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to :action=>"show"
    else
    @err = @comment.errors
     render 'show'
   end
  end
  def show
    @comment = Comment.all
  end

  private
  def comment_param
    return params.require(:comment).permit(:id,:content,:user_id,:post_id,:status)
  end
end
