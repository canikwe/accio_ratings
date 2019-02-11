class ReviewsController < ApplicationController

before_action :get_reviews, only: [:show]


def show
end






private

def get_reviews
  @review = Review.find(params[:id])
end

def review_params
  params.require(:review).permit(:title, :content, :overall, :difficulty, :intrigue, :recommendation, :klass, :student)
  ## Will need to check on :student param-- how can you choose who is writing the review?
end


end
