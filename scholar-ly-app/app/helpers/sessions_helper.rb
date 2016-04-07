module SessionsHelper
  module SessionsHelper

  def login(student)
    session[:student_id] = student.id
    @current_student = student
  end

  def current_student
    @current_student ||= Student.find_by_id(session[:student_id])
  end

  def logged_in?
    !current_student.nil?
  end

  def require_login
    if !logged_in?
      redirect_to "/login"
    end
  end

  def logout
    @current_student = session[:student_id] = nil
  end

  end
end
