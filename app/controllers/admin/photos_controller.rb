class Admin::PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
    @dog = Dog.find(params[:dog_id])
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])
    @dog = Dog.find(params[:dog_id])
  end

  # GET /photos/new
  def new
      @dog = dog()
    @photo = dog().photos.build
  end



  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create


    # @photo = dog().photos.build(photo_params)

  singleurlhash = params[:photo][:imglink].split(',')

  singleurlhash.each do |singleurl|
    @photo = dog().photos.build(:imglink => "#{singleurl}", :caption => params[:caption], :profile => false, :dog_id => params[:dog_id])
    @photo.save

  end
  
    respond_to do |format|
      if @photo.save
        format.html { redirect_to [:admin, dog ,@photo], notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to [:admin, dog ,@photo], notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to [:admin, dog], notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:imglink, :caption, :profile, :dog_id)
    end

    def dog
      Dog.find(params[:dog_id])
    end
end
