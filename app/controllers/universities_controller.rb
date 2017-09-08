class UniversitiesController < ApplicationController
  layout :check_layout 
  def new
    @university =University.new
  end
  def create
    @university =University.new(university_param)
    
    if @university.save
     flash[:success] = "Succesfully submitted!"
     @university=University.all
     render 'show'
    else
      @error = @university.errors
          render 'new'
    end
  end
  
  def edit
        @university = University.find(params[:id])
  end

  def update
    @university =University.find(params[:university][:id])
    if @university.update_attributes(university_param)
       flash[:success] = "Successfully updates!"
      @university=University.all
     render 'show'
    else
       @err = @university.errors
       render 'edit' 
    end
  end
  def delete
    @university = University.find(params[:id])
    if @university.destroy
      redirect_to :action=>"show"
    else
    @err = @university.errors
     render 'show'
   end
  end
  def show
    @university = University.all
  end

  private
  def university_param
    return params.require(:university).permit(:id,:short_name,:full_name,:state)
  end
end
