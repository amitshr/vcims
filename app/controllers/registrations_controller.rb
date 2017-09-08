class RegistrationsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @registration =Registration.new
  end
  def create
    @registration =Registration.new(registration_param)
    
    if @registration.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @registration.errors
          render 'new'
    end
  end
  
  def edit
        @registration = Registration.find(params[:id])
  end

  def update
    @registration =Registration.find(params[:registration][:id])
    if @registration.update_attributes(registration_param)
       flash[:success] = "Successfully updates!"
       redirect_to request.referer  
    else
       @err = @registration.errors
       render 'edit' 
    end
  end
  def delete
    @registration = Registration.find(params[:id])
    if @registration.destroy
      redirect_to :action=>"show"     
     else
      @err = @school.errors
     render 'show'
   end
  end

  def show
    @registration = Registration.all
  end

  private
  def registration_param
    return params.require(:registration).permit(:id,:registration_number, :registration_date, :student_name, :email, :center, :course)
  end
end
