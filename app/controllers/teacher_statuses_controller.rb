class TeacherStatusesController < ApplicationController
  layout :check_layout 
  def new
       @category_id = Category.find_by_category_name("teacher").id
    @user = User.where("category_id = #{@category_id}")
    @teacher_status =TeacherStatus.new
  end
  def create
    @teacher_status =TeacherStatus.new(teacher_status_param)
    
    if @teacher_status.save
     flash.now[:success] = "Succesfully submitted!"
     @teacher_status =TeacherStatus.all 
     render 'show'
    else
      @error = @teacher_status.errors
          render 'new'
    end
  end
  
  def edit
        @category_id = Category.find_by_category_name("teacher").id
        @user = User.where("category_id = #{@category_id}")
        @teacher_status = TeacherStatus.find(params[:id])
  end

  def update
    @teacher_status =TeacherStatus.find(params[:teacher_status][:id])
    if @teacher_status.update_attributes(teacher_status_param)
       flash.now[:success] = "Successfully updates!"
       @teacher_status =TeacherStatus.all 
     
       render 'show'
    else
       @err = @teacher_status.errors
       render 'edit' 
    end
  end
  def delete
    @teacher_status = TeacherStatus.find(params[:id])
    if @teacher_status.destroy
      redirect_to :action=>"show"
    else
    @err = @teacher_status.errors
     render 'show'
   end
  end
  def show
    @teacher_status = TeacherStatus.all
  end

  private
  def teacher_status_param
    return params.require(:teacher_status).permit(:id,:user_id,:batch_id)
  end
end
