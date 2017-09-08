class ExperiencesController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id]
    @teacher_id =Teacher.find_by_user_id(@id).id 
    @experience =Experience.new
  end
  def create
    @experience =Experience.new(experience_param)
    if @experience.save
       flash[:success] = "Succesfully submitted!"
        redirect_to request.referer
    else
      @error = @experience.errors
        render 'new'
    end
  end
  
  def edit
        @experience = Experience.find(params[:id])
  end

  def update
    @experience =Experience.find(params[:experience][:id])
    if @experience.update_attributes(experience_param)
       flash[:success] = "Succesfully Edited!"
       redirect_to request.referer
    else
       @err = @experience.errors
       render 'edit'
    end
  end
  def delete
    @experience = Experience.find(params[:id])
    if @experience.destroy
      redirect_to :action=>"show"
    else
    @err = @experience.errors
     render 'show'
   end
  end
  def show
    @experience = Experience.all
  end

  private
  def experience_param
    return params.require(:experience).permit(:id,:teacher_id,:organization_name,:from,:to,:status)
  end
end
