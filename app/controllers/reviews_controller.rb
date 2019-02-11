class ReviewsController < ApplicationController

before_action :get_reviews, only: [:show, :edit, :update, :destroy]

def new
  @review = Review.new
end

def create
  @review = Review.create(review_params)
  redirect_to review_path(@review)

end

def show
end

def edit
end

def update
  @review.update(review_params)
  redirect_to review_path(@review)
end

def destroy
  k = @review.klass
  @review.destroy
  redirect_to klass_path(k)
end





private

def get_reviews
  @review = Review.find(params[:id])
end

def review_params
  params.require(:review).permit(:title, :content, :overall, :difficulty, :intrigue, :recommendation, :klass_id, :student_id)
  ## Will need to check on :student param-- how can you choose who is writing the review?
end


end
