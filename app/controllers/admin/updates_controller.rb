class Admin::UpdatesController < AdminController
  before_action :set_update, only: [:show, :edit, :update, :destroy]

  def show

    @update = Update.find(params[:id])
  
  end

  def new
    #@update = Update.new
 
    @update = dog().updates.build

  end

  def edit
     @update = Update.find(params[:id]) 
  end

  def create

    @update = dog().updates.build(update_params)

    respond_to do |format|
      if @update.save
       
        format.html { redirect_to admin_dog_path(@update.dog_id), notice: 'Update was successfully created.' }

        #format.html { redirect_to [:admin, :dog, @update], notice: 'Update was successfully created.' }
        format.json { render :show, status: :created, location: @update }
      else
        format.html { render :new }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @update.update(update_params)
        format.html { redirect_to [:admin, :dog, @update], notice: 'Update was successfully updated.' }
        format.json { render :show, status: :ok, location: @update }
      else
        format.html { render :edit }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @update.destroy
    respond_to do |format|
      format.html { redirect_to admin_dogs_url, notice: 'Update was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update
      @update = Update.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def update_params
      params.require(:update).permit(:id, :dog_id, :date, :text, :image_url)
    end

    def dog
      Dog.find(params[:dog_id])
    end  

  end
