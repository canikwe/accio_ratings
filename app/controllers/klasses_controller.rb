class KlassesController < ApplicationController
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



private

  def klass_params
    params.require(:klass).permit(:year, subject_attributes:[:id, :name], instructor_attributes:[:id, :name ])
  end

end
