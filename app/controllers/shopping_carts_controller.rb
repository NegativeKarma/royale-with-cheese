class ShoppingCartsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    @cart = Cart.create
    session[:cart_id] = @cart.id
    @cart.add(product, product.price)

    redirect_to webshop_show_path, notice: "#{product.title} has been added to cart "
  end

  def update
    product = Product.find(params[:product_id])
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    end
    @cart.add(product, product.price)

    redirect_to webshop_show_path, notice: "#{product.title} has been added to cart "
  end
end
