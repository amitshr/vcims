class AnswersController < ApplicationController
  layout :check_layout 
  def new
    @id =params[:id]
   
    @question =Question.find(@id)
   
    @answer =Answer.new
  end
  def create
    @answer =Answer.new(answer_param)
    
    if @answer.save
     flash[:success] = "Succesfully submitted!"
    redirect_to request.referer
    else
      @error = @answer.errors
          render 'new'
    end
  end
  
  def edit
        @answer = Answer.find(params[:id])
  end

  def update
    @answer =Answer.find(params[:answer][:id])
    if @answer.update_attributes(answer_param)
       flash[:success] = "Successfully updates!"
       redirect_to request.referer
    else
       @err = @answer.errors
       render 'edit' 
    end
  end
  def delete
    @answer = Answer.find(params[:id])
    if @answer.destroy
      redirect_to :action=>"show"
    else
    @err = @answer.errors
     render 'show'
   end
  end
  def show
    @answer = Answer.all
  end

  private
  def answer_param
    return params.require(:answer).permit(:id,:question_id,:content)
  end
end
