class SubjectsController < ApplicationController
  layout :check_layout 
  def new

    @subject =Subject.new
  end
  def create
    @subject =Subject.new(subject_param)
    
    if @subject.save
     flash.now[:success] = "Succesfully submitted!"
      @subject =Subject.all
     render 'show'
    else
      @error = @subject.errors
          render 'new'
    end
  end
  
  def edit
        @subject = Subject.find(params[:id])
  end

  def update
    @subject =Subject.find(params[:subject][:id])
    if @subject.update_attributes(subject_param)
       flash.now[:success] = "Successfully updates!"
       @subject =Subject.all
       render 'show'
    else
       @err = @subject.errors
       render 'edit' 
    end
  end
  def delete
    @subject = Subject.find(params[:id])
    if @subject.destroy
      redirect_to :action=>"show"
    else
    @err = @subject.errors
     render 'show'
   end
  end
  def show
    @subject = Subject.all
  end

  private
  def subject_param
    return params.require(:subject).permit(:id,:title)
  end
end
