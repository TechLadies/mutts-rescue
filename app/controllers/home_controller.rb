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

  def age
    age = (DateTime.now - born_on) / 365.25
  end

  def filter
    @dogs = Idea.where(nil)
    filtering_params(params).each do |key, value|
      @dogs = @dogs.public_send(key, value) if value.present?
  end

 private
	
    def dog_params
      params.require(:dog).permit(:name, :gender, :born_on, :chip_number, :license_number, :is_hdb_approved, :color_markings, :adoption_status, :background_story, :is_good_with_other_dogs, :is_good_with_kids, :energy_level, :notes_temperament, :is_vaccinated, :is_sterilized, :notes_health, :quote, :image_url)
    end
    # A list of the param names that can be used for filtering the Product list
    def filtering_params(params)
      params.slice(:name, :gender, :born_on, :chip_number, :license_number, :is_hdb_approved, :color_markings, :adoption_status, :background_story, :is_good_with_other_dogs, :is_good_with_kids, :energy_level, :notes_temperament, :is_vaccinated, :is_sterilized, :notes_health, :quote, :image_url)
    end
 end

end