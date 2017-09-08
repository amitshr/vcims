class TeachersController < ApplicationController
 layout :check_layout 
  def new
    @id=params[:id]
    @teacher =Teacher.new
     @image =Image.new  
  end
  def create
    @teacher =Teacher.new(teacher_param)
     @image =Image.new(image_param)
    if @teacher.save && @image.save
    
   redirect_to :action=>'teacher',:id=>@teacher.user_id
   
    else
      @error = @teacher.errors
      @id = @teacher.user_id
          render 'new'
    end
  end
  
  def edit
        @teacher = Teacher.find(params[:id])
  end

  def update
      @teacher =Teacher.find(params[:teacher][:id])
    if @teacher.update_attributes(teacher_param)
       redirect_to request.referer
    else
       @err = @teacher.errors
        redirect_to request.referer
    end
  end
  def delete
      @teacher = Teacher.find(params[:id])
    if @teacher.destroy
      redirect_to :action=>"show"
    else
      @err = @teacher.errors
      render 'show'
   end
  end
  def show
      @teacher = Teacher.all
  end
  def profile
    @teacher =Teacher.find_by_user_id(params[:user_id])
    @teacher_status=TeacherStatus.where("user_id = #{@teacher.user_id}")
      if @teacher.image_id
        @image =Image.find(@teacher.image_id)
      end
  end
  def teacher
    @teacher =Teacher.find_by_user_id(params[:id])
      if @teacher.image_id
          @image =Image.find(@teacher.image_id)
      end
      if Address.exists?(user_id: params[:id] )
         @address = Address.find_by_user_id(@teacher.user_id)
      end
      if Qualification.exists?(teacher_id: @teacher.id )
         @qualification = Qualification.where("teacher_id = #{@teacher.id}")
      end
      if Experience.exists?(teacher_id: @teacher.id )
         @experience = Experience.where("teacher_id = #{@teacher.id}")
      end
  end
  def post
      @user_id=User.find_by_email(session[:email]).id
      @comment =Comment.where("user_id=#{@user_id}")
      @post =Post.all
  end
  def teacherList
     @batch =Batch.find(params[:id])
    @teacher_status =TeacherStatus.where("batch_id=#{@batch.id}")    
  end
  private
  def teacher_param
    return params.require(:teacher).permit(:id,:user_id,:teacher_name,:gender,:mobile_number,:birth_date,:birth_city,:joining_date,:salary,:image_id,:marital_status)
  end
   def image_param
    return params.require(:image).permit(:description,:image,:size)  
  end
end
