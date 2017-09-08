class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   def check_logged_in
    if	session[:email].nil? || session[:email].empty?
       redirect_to request.referer
   end
  end
  def check_admin_role
    if session[:role]!="admin"
        redirect_to request.referer
       reset_session
    end
  end
  def check_layout
    if session[:category_id]==Category.find_by_category_name("center").id.to_s
        "center"
      elsif session[:category_id]==Category.find_by_category_name("student").id.to_s
        "student"
      elsif session[:category_id]==Category.find_by_category_name("teacher").id.to_s
          "teacher"
      elsif session[:category_id]==Category.find_by_category_name("admin").id.to_s
          "admin"
      else
      	redirect_to request.referer
    end
  end
end
