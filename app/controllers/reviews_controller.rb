class ReviewsController < ApplicationController

  def create
    @review = Review.new

    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    @review.save

  end


end
