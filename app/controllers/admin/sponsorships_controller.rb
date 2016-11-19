class Admin::SponsorshipsController < AdminController
	before_action :set_sponsorship, only: [:index, :show, :edit, :update, :destroy]

  def index
    @sponsorship = Sponsorship.all
  end

  def show
    @sponsorship = Sponsorship.find(params[:id])
    @dog_id = @sponsorship.dog_id
  end

  def new
    @sponsorship = Sponsorship.new
  end

  def create
    @sponsorship = Sponsorship.new(sponsorship_params)

    respond_to do |format|
      if @sponsorship.save
        format.html { redirect_to [:admin, @sponsorship], notice: 'Sponsorship was successfully created.' }
        format.json { render :index, status: :created, location: @sponsorship }
      else
        format.html { render :new }
        format.json { render json: @sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
	  @sponsorship = Sponsorship.find(params[:id])
  end

  def update

    respond_to do |format|
      if @sponsorship.update(sponsorship_params)
        format.html { redirect_to [:admin, @sponsorship], notice: 'Sponsorship was successfully updated.' }
        format.json { render :index, status: :ok, location: @sponsorship }
      else
        format.html { render :edit }
        format.json { render json: @sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sponsorship.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Sponsorship was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsorship
      @sponsorship = Sponsorship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsorship_params
      params.require(:sponsorship).permit(:person_id, :dog_id, :sponsor_until_date, :amount, :sponsorship_type, :notes)
    end


  end
