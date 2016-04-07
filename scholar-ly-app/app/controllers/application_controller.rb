class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # respond_to :json

def current_student
    @current_student ||= Student.find(session[:student_id]) if session[:student_id]
  end
  helper_method :current_student

  def authorize
    redirect_to '/login' unless current_student
  end

  def angular
    render 'layouts/application'
  end


  # def show
  #   @students = Student.search(params[:search])
  # end


end
