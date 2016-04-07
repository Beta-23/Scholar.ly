class StudentsController < ApplicationController

before_action :authorize, only: [:index, :show]

def index
end

def new
  @student = Student.new
  render :new
end

def create 
  @student = Student.create( student_params )

  if @student.save
    session[:student_id] = @student.id
    redirect_to student_path(@student)
  else
    render :new
  end
end 

def show
    p params
    render show: Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :scholarhips, :type_student_grade_level, :password, :password_confirmation)
  end

end
