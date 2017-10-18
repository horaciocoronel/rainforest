class ReviewsController < ApplicationController

  def create
    @review = Review.new

    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    @review.save
    flash[:notice] = "You have successfully saved a new review."

    redirect_to products_path

  end

  def edit
    @review = Review.find_by(params[:id])
    @product = Product.find_by(params[:product_id])
  end



end
