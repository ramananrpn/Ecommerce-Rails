class ProductsController < ApplicationController
  before_filter :set_product, only: [:show, :update, :destroy]

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created, location: 'products/show/:id_url'
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update_attributes(params[:product])
      head :no_content
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @product
  end

  def destroy
    product.destroy
    head :no_content
  end

  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params[:product]
  end
end
