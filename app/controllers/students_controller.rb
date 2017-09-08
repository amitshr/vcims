class StudentsController < ApplicationController
  layout :check_layout
  def new
   @id = params[:id]
    @student =Student.new
    @image =Image.new  
  end
  def create
    @student =Student.new(student_param)
    @image =Image.new(image_param)
    if @student.save && @image.save
     flash[:success] = "Succesfully submitted!"
     redirect_to :action=>'student',:id=>@student.user_id
    else
      @error = @student.errors
      @id = @student.user_id
          render 'new'
    end
  end
  
  def edit
        @student = Student.find(params[:id])
  end

  def update
    @student =Student.find(params[:student][:id])
    if @student.update_attributes(student_param)
      
       redirect_to request.referer
    else
       @error = @student.errors
       redirect_to request.referer
    end
  end
  def delete
    @student = Student.find(params[:id])
    if @student.destroy
      redirect_to :action=>"show"
    else
    @err = @student.errors
     render 'show'
   end
  end
  def show
    @student = Student.all
  end
  def profile
    @student =Student.find_by_user_id(params[:user_id])
    @student_status=StudentStatus.where("user_id = #{@student.user_id}")
    if @student.image_id
     @image =Image.find(@student.image_id)
    end
  end
  def post
    @user_id=User.find_by_email(session[:email]).id
    @comment =Comment.where("user_id=#{@user_id}")
    @post = Post.all
  end
  def student
    @student = Student.find_by_user_id(params[:id])
      if @student.image_id
        @image =Image.find(@student.image_id)
      end
      if Address.exists?(user_id: params[:id] )
         @address = Address.find_by_user_id(@student.user_id)
      end
  end
  def studentList
    @batch =Batch.find(params[:id])
    @student_status =StudentStatus.where("batch_id=#{@batch.id}")
  end
  private
  def student_param
    return params.require(:student).permit(:id,:user_id,:student_name,:father_name,:mother_name,:gender,:birth_date,:birth_city,:mobile_number,:image_id,:admission_date)
  end
  def image_param
    return params.require(:image).permit(:description,:image,:size)  
  end
end
