class OrderController < ApplicationController



  @email
  @address
  @name



  def form
  end

  def new

      @email = params[:email]
      @address = params[:address]
      @name = params[:name]


      session[:cart] = {}

  end


end
