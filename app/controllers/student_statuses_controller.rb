class StudentStatusesController < ApplicationController
  layout :check_layout 
  def new
     @category_id = Category.find_by_category_name("student").id
    @user = User.where("category_id = #{@category_id}")
    @student_status =StudentStatus.new
  end
  def create
    @student_status =StudentStatus.new(student_status_param)
    
    if @student_status.save
     flash.now[:success] = "Succesfully submitted!"
     @student_status =StudentStatus.all
     render 'show'
    else
      @error = @student_status.errors
          render 'new'
    end
  end
  
  def edit
        @category_id = Category.find_by_category_name("student").id
        @user = User.where("category_id = #{@category_id}")
        @student_status = StudentStatus.find(params[:id])
  end

  def update
    @student_status =StudentStatus.find(params[:student_status][:id])
    if @student_status.update_attributes(student_status_param)
       flash[:success] = "Successfully updates!"
       @student_status =StudentStatus.all
       render 'show'
    else
       @err = @student_status.errors
       render 'edit' 
    end
  end
  def delete
    @student_status = StudentStatus.find(params[:id])
    if @student_status.destroy
      redirect_to :action=>"show"
    else
    @err = @student_status.errors
     render 'show'
   end
  end
  def show
    @student_status = StudentStatus.all
  end

  private
  def student_status_param
    return params.require(:student_status).permit(:id,:user_id,:batch_id)
  end
end
