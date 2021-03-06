class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :require_owner, only: [:edit, :update]
  expose(:categories)
  expose(:category)
  expose(:products)
  expose(:product)
  expose(:review) { Review.new }
  expose_decorated(:reviews, ancestor: :product)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.product = Product.new(product_params)
    self.product.user=current_user
    if product.save
      category.products << product
      redirect_to category_product_url(category, product), notice: 'Product was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if self.product.update(product_params)
      redirect_to category_product_url(category, product), notice: 'Product was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /products/1
  def destroy
    product.destroy
    redirect_to category_url(product.category), notice: 'Product was successfully destroyed.'
  end

  def require_owner
    unless current_user == self.product.user
      redirect_to category_product_url(category, product)
      flash[:error] = 'You are not allowed to edit this product.'
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :category_id)
  end
end
