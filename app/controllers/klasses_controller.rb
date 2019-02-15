class KlassesController < ApplicationController
  before_action :rootmaker

  def show
    @klass = Klass.find(params[:id])
    @klass_reviews = @klass.reviews.select {|r| r.id}
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(klass_params)
    if @klass.save
      redirect_to @klass
    else render :new
    end
  end

  def index
  end



private

  def klass_params
    params.require(:klass).permit(:year, :subject_id, :instructor_id)
  end

end
