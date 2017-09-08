class AppPagesController < ApplicationController
  layout "blank", except: [:home]

  def home

  end

  def course

  end

  def center


  end
  def tutorial
  

  end
  def about
  

  end
  def contact
    

  end
  def student
    @user = User.find(params[:id])
    if StudentStatus.exists?(:user_id => params[:id])
        session[:email] = @user.email
        session[:category_id] = @user.category_id
        redirect_to :controller=>"students",:action=>"profile",:user_id=>@user.id
    else
        render 'welcome'
    end

  end
  def welcome
    
  end

  def teacher
    @user = User.find(params[:id])
    if TeacherStatus.exists?(:user_id => params[:id])
        session[:email] = @user.email
        session[:category_id] = @user.category_id
        redirect_to :controller=>"teachers",:action=>"profile",:user_id=>@user.id
    else
        render 'welcome'
    end    
  end
  def services
    
  end
  def blog
    @blog =Blog.all
    
  end
  def login

  end
  def loginCreate
    @email = params[:email]
    @password = params[:password]
    @password = Digest::SHA1.hexdigest("Amit has encrypted the password with #{@password}") 
    user = User.find_by_email(@email)
     
   if user && user.password == @password && user.category_id.to_i == Category.find_by_category_name("admin").id
      session[:email] = user.email
      session[:category_id] = user.category_id
      redirect_to url_for(:controller=>"panels",:action=>"admin")
        elsif user && user.password == @password && user.category_id.to_i == Category.find_by_category_name("student").id
        redirect_to :controller=>"app_pages",:action=>"student",:id=>user.id
        elsif user && user.password == @password && user.category_id.to_i == Category.find_by_category_name("webuser").id
          session[:email] = user.email
          session[:category_id] =user.category_id
          redirect_to :controller=>"",:action=>""
        elsif user && user.password == @password && user.category_id.to_i == Category.find_by_category_name("center").id
          session[:email] = user.email
          session[:category_id] =user.category_id
          redirect_to :controller=>"centers",:action=>"profile"
        elsif user && user.password == @password && user.category_id.to_i == Category.find_by_category_name("teacher").id
          redirect_to :controller=>"app_pages",:action=>"teacher",:id=>user.id
         else
          flash[:notice]
            redirect_to :controller=>"app_pages",:action => "login",:notice =>"wrong username or password"
          end   
  end
  def logout
     reset_session
    redirect_to :controller=>"app_pages",:action => "home"
  end
  def post
        @post= Post.find(params[:id])
        @comment = Comment.where("post_id = #{@post.id}")
      if @post.image_id
        @image =Image.find(@post.image_id)
      end
  end
  def signup
    reset_session
   @id =Category.find_by_category_name("student").id
   @user=User.new
  end
  
end
