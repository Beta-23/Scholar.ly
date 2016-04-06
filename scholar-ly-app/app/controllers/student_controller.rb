class StudentController < ApplicationController
# def new
#   @student = Student.new
# end

def create 
  @student = Student.create( student_params )

  if @student.save!
    redirect_to student_path(@student)
  else
    render :new
  end
end 

def show
    p params
    render json: Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :type_student_grade_level)
  end

end
