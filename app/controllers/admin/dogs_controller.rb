class Admin::DogsController < AdminController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  # GET /dogs
  # GET /dogs.json
  def index
    @dogs = Dog.all

          if params[:adoption_status] && params[:adoption_status] != 'any'
        @dogs = @dogs.public_send(params[:adoption_status])
      end



      @search_params = params.permit(:adoption_status)

  end

  # GET /dogs/1
  # GET /dogs/1.json
  def show
    @dogs=Dog.all
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
    render :show
  end

  # GET /dogs/1/edit
  def edit
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = Dog.new(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to [:admin, @dog], notice: 'Dog was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    respond_to do |format|
      if dog_params[:is_featured]
        Dog.featured.update_all(is_featured: false)
      end

      if @dog.update(dog_params)
        format.html { redirect_to [:admin, @dog], notice: 'Dog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :show }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to admin_dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params
      params.require(:dog).permit(:name, :gender, :born_on, :chip_number, :license_number, :is_hdb_approved, :color_markings, :adoption_status, :background_story, :is_good_with_other_dogs, :is_good_with_kids, :energy_level, :notes_temperament, :is_vaccinated, :is_sterilized, :notes_health, :quote, :image_url, :location_id, :is_good_for_elderly_owners, :is_featured)
    end
end
