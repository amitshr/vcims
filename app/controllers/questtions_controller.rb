class QuesttionsController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @page = Page.find(@id)
    @question =Question.new
  end
  def create
    @question =Question.new(question_param)
    
    if @question.save
     flash[:success] = "Succesfully submitted!"
      @question = Question.all
     render 'show'
    else
      @error = @question.errors
      render 'show'
    end
  end
  
  def edit
        @question = Question.find(params[:id])
  end

  def update
    @question =Question.find(params[:question][:id])
    if @question.update_attributes(question_param)
       flash[:success] = "Successfully updates!"
       @question = Question.all
        render 'show'
    else
       @err = @question.errors
       render 'edit' 
    end
  end
  def delete
    @question = Question.find(params[:id])
    if @question.destroy
      redirect_to :action=>"show"
    else
    @err = @question.errors
     render 'show'
   end
  end
  def show
    @question = Question.all
  end

  private
  def question_param
    return params.require(:question).permit(:id,:content,:page_id,:question_number,:question_type)
  end
end
