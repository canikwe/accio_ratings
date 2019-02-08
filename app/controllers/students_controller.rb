class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :destroy, :edit, :update]
  def show
  end

  private
  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :username, :grad_year)
  end
end
