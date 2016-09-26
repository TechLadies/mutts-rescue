class HomeController < ApplicationController

helper_method :dogs

  def home
  	@dogs = Dog.all
  end
  
end
