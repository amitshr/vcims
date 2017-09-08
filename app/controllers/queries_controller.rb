class QueriesController < ApplicationController
  layout :check_layout 
  def new
    @id = params[:id] 
    @query =Query.new
  end
  def create
    @query =Query.new(query_param)
    
    if @query.save
     flash[:success] = "Succesfully submitted!"

     redirect_to request.referer
    else
      @error = @query.errors
          render 'new'
    end
  end
  
  def edit
        @query = Query.find(params[:id])
  end

  def update
    @query =Query.find(params[:query][:id])
    if @query.update_attributes(query_param)
       flash[:success] = "Successfully updates!"
       render 'show'
    else
       @err = @query.errors
       render 'edit' 
    end
  end
  def delete
    @query = Query.find(params[:id])
    if @query.destroy
      redirect_to :action=>"show"
    else
    @err = @query.errors
     render 'show'
   end
  end
  def show
    @query = Query.all
  end

  private
  def query_param
    return params.require(:query).permit(:id,:email, :mobile_number,:line1 ,:line2,:city,:state,:question,:reply,:status)
  end
end
