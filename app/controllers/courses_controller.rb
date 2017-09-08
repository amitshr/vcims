class CoursesController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @course =Course.new
  end
  def create
    @course =Course.new(course_param)
    
    if @course.save
     flash.now[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @course.errors
      render 'new'
    end
  end
  
  def edit
        @course = Course.find(params[:id])
  end

  def update
    @course =Course.find(params[:course][:id])
    if @course.update_attributes(course_param)
       flash.now[:success] = "Successfully updates!"
       redirect_to request.referer
    else
       @err = @course.errors
       render 'edit' 
    end
  end
  def delete
    @course = Course.find(params[:id])
    if @course.destroy
      redirect_to :action=>"show"
    else
    @err = @course.errors
     render 'show'
   end
  end
  def show
    @course = Course.all
  end
  def profile

    @course =Course.find(1)
    
  end

  private
  def course_param
    return params.require(:course).permit(:id,:course_name,:board_id,:subject_id,:klass_id,:fee,:duration,:description)
  end
end
