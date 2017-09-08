class CollegesController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @college =College.new
  end
  def create
    @college =College.new(college_param)
    
    if @college.save
     flash[:success] = "Succesfully submitted!"
      @college = College.all
     render 'show'
    else
      @error = @college.errors
          render 'new'
    end
  end
  
  def edit
        @college = College.find(params[:id])
  end

  def update
    @college =College.find(params[:college][:id])
    if @college.update_attributes(college_param)
       flash[:success] = "Successfully updates!"
       @college = College.all
     render 'show'
    else
       @err = @college.errors
       render 'edit' 
    end
  end
  def delete
    @college = College.find(params[:id])
    if @college.destroy
      redirect_to :action=>"show"
    else
    @err = @college.errors
     render 'show'
   end
  end
  def show
    @college = College.all
  end

  private
  def college_param
    return params.require(:college).permit(:id,:college_name,:city,:state,:university_id,:college_type,:education_mode,:contact_number)
  end
end
