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

      if validateInput(@email, @address, @name)
        session[:cart] = {}
      else
        redirect_to order_form_url
      end
  end

  def validateInput(email, adress, name)

      if name.nil?
        return false
      end
      if email.nil?
        return false
      end
      if adress.nil?
        return false
      end

  end

end
