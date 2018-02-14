class ReviewsController < ApplicationController
  def new
    set_restaurant
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = set_restaurant
    @review.save
    redirect_to restaurants_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
