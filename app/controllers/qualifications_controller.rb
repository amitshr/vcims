class QualificationsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @teacher_id =Teacher.find_by_user_id(@id).id
    @qualification =Qualification.new
  end
  def create
    @qualification =Qualification.new(qualification_param)
    
    if @qualification.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @qualification.errors
        render 'new'
    end
  end
  
  def edit
        @qualification = Qualification.find(params[:id])
  end

  def update
    @qualification =Qualification.find(params[:qualification][:id])
    if @qualification.update_attributes(qualification_param)
       redirect_to request.referer
    else
       @err = @qualification.errors
       render 'edit'
    end
  end
  def delete
    @qualification = Qualification.find(params[:id])
    if @qualification.destroy
      redirect_to :action=>"show"
    else
    @err = @qualification.errors
     render 'show'
   end
  end
  def show
    @qualification = Qualification.all
  end

  private
  def qualification_param
    return params.require(:qualification).permit(:id,:teacher_id,:degree,:mode,:year_of_passing,:marks_obtained,:percentage)
  end
end
