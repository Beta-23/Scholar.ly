class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    student = Student.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if student && student.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:student_id] = student.id
      redirect_to student_path student.id
     else
     # If user's login doesn't work, send them back to the login form.
     redirect_to '/login' 
    end
  end

  def destroy
    session[:student_id] = nil
    redirect_to '/' 
  end

  private

  def student_params
    params.require(:student).permit(:email, :password)
  end

end
