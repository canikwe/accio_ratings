class InstructorsController < ApplicationController

  def show
    @instructor = Instructor.find(params[:id])
  end

  def index
    @instructor = Instructor.all
  end

end
