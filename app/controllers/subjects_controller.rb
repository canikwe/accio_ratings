class SubjectsController < ApplicationController

  def show
    @subject = Subject.find(params[:id])
  end

  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to new_klass_path
    else render :new
    end
  end


  private

  def subject_params
    params.require(:subject).permit(:name)
  end
end
