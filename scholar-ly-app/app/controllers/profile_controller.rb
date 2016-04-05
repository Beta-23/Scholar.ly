class ProfileController < ApplicationController

  def index
    respond_with Profile.all
  end

  def create
    respond_with Profile.create(profile_params)
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :type_student_grade_level)
  end
end

