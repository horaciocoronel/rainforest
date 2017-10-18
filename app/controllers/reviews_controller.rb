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


  def update

    @review = Review.find_by(params[:id])

    if @review.update(:comment => params[:review][:comment])
      redirect_to @review.product
        flash[:notice] = "You have successfully updated a review."
    else
      redirect_back_or_to @review.product
    end
  end




end
