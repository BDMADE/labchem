class HomeController < ApplicationController
  layout 'home'
  def index
@sliders = Slider.all
  end

  def order
    @products=Product.all

  end

 ##AJAX function


  def labchem_products
    @products=Product.all
  end

  def ajax_products_total

  end

 
end

