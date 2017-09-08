class UsersController < ApplicationController
  layout :check_layout, except: [:login,:createLogin]
  def new
    @id = params[:id]
    @user =User.new
  end
  def create
    @user =User.new(user_param)
    if @user.save
     flash.now[:success] = "Succesfully submitted!"
     cname = Category.find(@user.category_id).category_name
          if cname =="student"
            redirect_to :controller=>"app_pages",:action =>"student",:id=>@user.id
          elsif cname =="center"
            redirect_to :controller=>"app_pages",:action =>"center",:id=>@user.id
          elsif cname == "teacher"
            redirect_to :controller=>"app_pages",:action =>"teacher",:id=>@user.id 
          elsif cname== "admin"
            redirect_to :controller=>"admins",:action =>"show"
          else
            redirect_to :controller=>"app_pages",:action=>"signup"
          end
    else
      @error = @user.errors
      render 'new'
    end
  end
  def edit
        @user = User.find(params[:id])
  end
  def update
    @user =User.find(params[:user][:id])
    if @user.update_attributes(user_param)
       flash[:success] = "Successfully updated!"
       render 'profile',:id => @user.id
    else
       @err = @user.errors
       @user = User.all
       render 'show' 
    end
  end
  def delete
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to :action=>'show'
    else
    @err = @user.errors
     render 'show'
   end
  end
  def show
    @user = User.all
  end
def profile
     @user =User.find_by_email(session[:email])
     
  end
  def login
    
  end
  
  def logout
       reset_session
      redirect_to :controller=>"app_pages",:action => "home"
    
  end

  private
  def user_param
    return params.require(:user).permit(:id,:email,:user_name,:password,:category_id,:password_2,:status,:email_verification)
  end
end
