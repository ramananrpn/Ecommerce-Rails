class ProductsController < ApplicationController
  before_filter :set_product, only: [:show, :update, :destroy]

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def edit
  end

  def show
  end

  def destroy
  end

  private

  def set_product
    @category = Category.find(params[:id])
  end

  def product_params
    params[:category]
  end
end
