class KlassesController < ApplicationController
  def show
    @klass = Klass.find(params[:id])
    @review = Review.new
  end


end
