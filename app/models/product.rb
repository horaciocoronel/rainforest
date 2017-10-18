class Product < ApplicationRecord

    has_many :reviews

    def price_in_dollars
      price_in_dollars = price_in_cents.to_f / 100
      sprintf("$%.2f", price_in_dollars)
    end

    @review = Product.first


    validates :name, :description, :price_in_cents, presence: { message: "Please fill out %{attribute}" }
    validates :price_in_cents, numericality: { message: "Please enter a integer"}


end
