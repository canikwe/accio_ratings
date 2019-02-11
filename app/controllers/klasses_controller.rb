class KlassesController < ApplicationController
  def show
    @klass = Klass.find(params[:id])
    @klass_reviews = @klass.reviews.select {|r| r.id}
  end


end
