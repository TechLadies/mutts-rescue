class HomeController < ApplicationController

helper_method :dogs

  def home
  	@dogs = Dog.all

  end
  
  def show
  end

  def about_dog
  	@dog = Dog.find(params[:id])
end



end
