class ExamsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @exam =Exam.new
  end
  def create
    @exam =Exam.new(exam_param)
    
    if @exam.save
     flash[:success] = "Succesfully submitted!"
      @exam = Exam.all
     render 'show'
    else
      @error = @exam.errors
          render 'new'
    end
  end
  
  def edit
        @exam = Exam.find(params[:id])
  end

  def update
    @exam =Exam.find(params[:exam][:id])
    if @exam.update_attributes(exam_param)
       flash[:success] = "Successfully updates!"
       
       @course =Exam.all
       render 'show'
    else
       @err = @exam.errors
       render 'edit' 
    end
  end
  def delete
    @exam = Exam.find(params[:id])
    if @exam.destroy
      redirect_to :action=>"show"
    else
    @err = @exam.errors
     render 'show'
   end
  end
  def show
    @exam = Exam.all
  end

  private
  def exam_param
    return params.require(:exam).permit(:id,:batch_id,:test_id,:center_id,:teacher_id)
  end
end
