class InstructorsController < ApplicationController
  before_action :rootmaker


  def show
    @instructor = Instructor.find(params[:id])
  end

  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to new_klass_path
    else render :new
    end
  end


    private


    def instructor_params
      params.require(:instructor).permit(:name)
    end
end
