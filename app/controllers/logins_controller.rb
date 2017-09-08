class LoginsController < ApplicationController
  def index
  end

  def new
  	@login = Login.new
  end

  def create
  	
  end
  def logout
    reset_session
    redirect_to :action => "home"
  end
  private
  def login_param
  	 return params.require(:user).permit(:email,:password,:role,:password_2)
  end
end
