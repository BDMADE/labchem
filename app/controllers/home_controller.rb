class HomeController < ApplicationController
  layout 'home'
  def index
@sliders = Slider.all
  end


 
end

