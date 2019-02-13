# require 'spec_helper'

class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :destroy, :edit, :update]
  before_action :rootmaker, except: :new

  def show
  end

  def new
    if current_student
      redirect_to root_path
    else
      @student = Student.new
    end
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
    # renders homepage for all logged in students
  end

  def edit
    if current_student.id != @student.id
      redirect_to current_student
    end
    # renders profile edit page for current student only
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render :edit
    end
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :username, :grad_year, :password, :password_confirmation)
  end
end
