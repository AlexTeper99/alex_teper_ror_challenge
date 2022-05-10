class InfousersController < ApplicationController
  before_action :set_infouser, only: %i[ show edit update destroy ]

  # GET /infousers or /infousers.json
  def index
    @infousers = Infouser.all
  end

  # GET /infousers/1 or /infousers/1.json
  def show
  end

  # GET /infousers/new
  def new
    @infouser = Infouser.new
  end

  # GET /infousers/1/edit
  def edit
  end

  # POST /infousers or /infousers.json
  def create
    @infouser = Infouser.new(infouser_params)

    respond_to do |format|
      if @infouser.save
        format.html { redirect_to infouser_url(@infouser), notice: "Infouser was successfully created." }
        format.json { render :show, status: :created, location: @infouser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @infouser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infousers/1 or /infousers/1.json
  def update
    respond_to do |format|
      if @infouser.update(infouser_params)
        format.html { redirect_to infouser_url(@infouser), notice: "Infouser was successfully updated." }
        format.json { render :show, status: :ok, location: @infouser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @infouser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infousers/1 or /infousers/1.json
  def destroy
    @infouser.destroy

    respond_to do |format|
      format.html { redirect_to infousers_url, notice: "Infouser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infouser
      @infouser = Infouser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infouser_params
      params.require(:infouser).permit(:city, :state, :country, :favorite_marvel_character, :favorite_marvel_comic, :created_date, :updated_date, :User_id)
    end
end
