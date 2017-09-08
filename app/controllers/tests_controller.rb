class TestsController < ApplicationController
   layout :check_layout   
  def new
    @test =Test.new
     @question = Question.all
  end
  def create
    @test =Test.new(test_param)
    
    if @test.save
     flash[:success] = "Succesfully submitted!"
       @test = Test.all
     render 'show'
    else
      @error = @test.errors
          render 'new'
    end
  end
  
  def edit
        @test = Test.find(params[:id])
  end

  def update
    @test =Test.find(params[:test][:id])
    if @test.update_attributes(test_param)
       flash[:success] = "Successfully updates!"
       @test = Test.all
     render 'show'
    else
       @err = @test.errors
       render 'edit' 
    end
  end
  def delete
    @test = Test.find(params[:id])
    if @test.destroy
      redirect_to :action=>"show"
    else
    @err = @test.errors
     render 'show'
   end
  end
  def show
    @test = Test.all
  end
  def profile
    @id = params[:id]
    @test =Test.find(@id)
    @course = Course.find(@test.course_id)
    @board = Board.find(@course.board_id)
    @klass =Klass.find(@course.klass_id)
    @subject =Subject.find(@course.subject_id)
  end
  private
  def test_param
    return params.require(:test).permit(:id,:test_code,:note,:course_id,:subject_id,:klass_id,:board_id,:test_type,:content,:marks,:time_duration)
  end
end
