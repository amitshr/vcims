class SchoolsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @school =School.new
  end
  def create
    @school =School.new(school_param)
    
    if @school.save
     flash[:success] = "Succesfully submitted!"
     @school =School.all
     render 'show'
    else
      @error = @school.errors
          render 'new'
    end
  end
  
  def edit
        @school = School.find(params[:id])
  end

  def update
    @school =School.find(params[:school][:id])
    if @school.update_attributes(school_param)
      flash[:success] = "Successfully updates!"
      @school =School.all
      render 'show'
    else
       @err = @school.errors
       render 'edit' 
    end
  end
  def delete
    @school = School.find(params[:id])
    if @school.destroy
      redirect_to :action=>"show"
    else
    @err = @school.errors
     render 'show'
   end
  end
  def show
    @school = School.all
  end

  private
  def school_param
    return params.require(:school).permit(:id,:school_name,:city,:state,:board_id,:school_type,:contact_number)
  end
end
