class KlassesController < ApplicationController
  def show
    @klass = Klass.find(params[:id])
    @klass_reviews = @klass.reviews.select {|r| r.id}
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.create(klass_params)
    redirect_to klass_path(@klass)
  end



private

def klass_params
  params.require(:klass).permit(:year, :subject_id, :instructor_id)
end



end
