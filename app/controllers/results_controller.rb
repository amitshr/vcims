class ResultsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @result =Result.new
  end
  def create
    @result =Result.new(result_param)
    
    if @result.save
     flash[:success] = "Succesfully submitted!"
     redirect_to request.referer
    else
      @error = @result.errors
          render 'new'
    end
  end
  
  def edit
        @result = Result.find(params[:id])
  end

  def update
    @result =Result.find(params[:result][:id])
    if @result.update_attributes(result_param)
       flash[:success] = "Successfully updates!"
      redirect_to request.referer
    else
       @err = @result.errors
       render 'edit' 
    end
  end
  def delete
    @result = Result.find(params[:id])
    if @result.destroy
      redirect_to :action=>"show"
    else
    @err = @result.errors
     render 'show'
   end
  end
  def show
    @result = Result.all
  end

  private
  def result_param
    return params.require(:result).permit(:id,:student_id,:marks_obtained,:test_id,:remark)
  end
end
