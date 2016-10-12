class Admin::PeopleController < AdminController   
	before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @person = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to [:admin, @person], notice: 'Person was successfully created.' }
        format.json { render :index, status: :created, location: @person }      
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit 
	  @person = Person.find(params[:id]) 
  end

  def update

    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to admin_people_path, notice: 'Person was successfully updated.' }
        format.json { render :index, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to admin_people_url, notice: 'Person was successfully deleted.' }
      format.json { head :no_content }
    end
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :phone, :email, :bank_acct, :address)
    end


  end