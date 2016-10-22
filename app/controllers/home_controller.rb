class HomeController < ApplicationController

helper_method :dogs
  
  def home
      @dogs = Dog.for_adoption
      @featured_dog = Dog.featured

      if params['gender'] && params['gender'] != 'any'
        @dogs = @dogs.public_send(params['gender'])
      end

      if params["born_on"] && params[:born_on] != 'any'
        @dogs = @dogs.public_send(params["born_on"])
      end
      
      if params["is_hdb_approved"] && params[:is_hdb_approved] != 'any'
        @dogs = @dogs.public_send(params["is_hdb_approved"])
      end

      @search_params = params.permit(:is_hdb_approved, :gender, :born_on)

  end

  def show
  end

  def about_dog
  	@dog = Dog.find(params[:id])
	end

  def age
    @dogs = Dog.all
    age = (DateTime.now - @dogs.born_on) / 365.25
  end

  def filter
    @dogs = Dog.where(nil)
    filtering_params(params).each do |key, value|
    @dogs = @dogs.public_send(key, value) if value.present?
  end

 private
	 def filtering_params(params)
      params.slice(:name, :gender, :born_on, :chip_number, :license_number, :is_hdb_approved, :color_markings, :adoption_status, :background_story, :is_good_with_other_dogs, :is_good_with_kids, :energy_level, :notes_temperament, :is_vaccinated, :is_sterilized, :notes_health, :quote, :image_url)
    end
    def dog_params
      params.require(:dog).permit(:name, :gender, :born_on, :chip_number, :license_number, :is_hdb_approved, :color_markings, :adoption_status, :background_story, :is_good_with_other_dogs, :is_good_with_kids, :energy_level, :notes_temperament, :is_vaccinated, :is_sterilized, :notes_health, :quote, :image_url)
    end
    # A list of the param names that can be used for filtering the Product list
    
 end

end