require 'test_helper'

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { adoption_status: @dog.adoption_status, background_story: @dog.background_story, born_on: @dog.born_on, chip_number: @dog.chip_number, color_markings: @dog.color_markings, energy_level: @dog.energy_level, gender: @dog.gender, is_good_with_kids: @dog.is_good_with_kids, is_good_with_other_dogs: @dog.is_good_with_other_dogs, is_hdb_approved: @dog.is_hdb_approved, is_sterilized: @dog.is_sterilized, is_vaccinated: @dog.is_vaccinated, license_number: @dog.license_number, name: @dog.name, notes_health: @dog.notes_health, notes_temperament: @dog.notes_temperament, quote: @dog.quote } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { adoption_status: @dog.adoption_status, background_story: @dog.background_story, born_on: @dog.born_on, chip_number: @dog.chip_number, color_markings: @dog.color_markings, energy_level: @dog.energy_level, gender: @dog.gender, is_good_with_kids: @dog.is_good_with_kids, is_good_with_other_dogs: @dog.is_good_with_other_dogs, is_hdb_approved: @dog.is_hdb_approved, is_sterilized: @dog.is_sterilized, is_vaccinated: @dog.is_vaccinated, license_number: @dog.license_number, name: @dog.name, notes_health: @dog.notes_health, notes_temperament: @dog.notes_temperament, quote: @dog.quote } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
