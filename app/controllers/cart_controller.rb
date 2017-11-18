class CartController < ApplicationController
  def index
    @cart = session[:cart] || {}
  end

  def add
    id = params[:id]
    cart = session[:cart] || {}
    cart[id]= (cart[id] || 0) + 1

    # session[:cart] = cart

    redirect_to :action => :index
  end
end
