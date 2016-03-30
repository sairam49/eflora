class ProductsController < ApplicationController
  def new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      update = current_user.id
      @product.update_attribute(:user_id,update)
    else
      render 'new'
    end

  end

def index
  @products = Product.where(:user_id => current_user.id).all
end


  def edit
  end

 private

  def product_params
    params.require(:product).permit(:url,:title,:cost,:quantity,:user_id)
  end

end
