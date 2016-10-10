class HomeController < ApplicationController

helper_method :dogs

  def home
  		@dogs = Dog.for_adoption
  end
  
  def show
  end

  def about_dog
  	@dog = Dog.find(params[:id])
	end

  

  def filter
    @dogs = Idea.where(nil)
    filtering_params(params).each do |key, value|
      @dogs = @dogs.public_send(key, value) if value.present?
  end

 private
	def dog_params
      params.require(:dog).permit(:name, :gender, :is_hdb_approved)
    end

    # A list of the param names that can be used for filtering the Product list
    def filtering_params(params)
      params.slice(:name, :gender, :is_hdb_approved)
    end	

 end
end
