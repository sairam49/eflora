class ProductsController < ApplicationController
 before_action :set_product, only: [:destroy]


  def new
     @product = Product.new
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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      index
      render 'index'
    else
      render 'edit'
    end
  end


 def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_index_path, notice: 'Product was successfully deleted.' }
    end
  end


 private

  def product_params
    params.require(:product).permit(:url,:title,:cost,:quantity,:user_id)
  end

   def set_product
      @product = Product.find(params[:id])
    end


end
