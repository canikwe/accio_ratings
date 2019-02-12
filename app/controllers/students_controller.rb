class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :destroy, :edit, :update]
  before_action :rootmaker

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.valid?
      @student.save
      session['student_id'] = @student.id
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def homepage

  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :username, :grad_year, :password, :password_confirmation)
  end
end
