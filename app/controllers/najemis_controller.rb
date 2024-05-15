class NajemisController < ApplicationController
  before_action :set_najemi, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[]
  before_action :authorize_user!, except: %i[destroy update index create potrdi]
  # GET /najemis or /najemis.json
  def index
    @najemis = Najemi.all
  end

  # GET /najemis/1 or /najemis/1.json
  def show

  end

  # GET /najemis/new
  def new
    @najemi = Najemi.new
  end

  # GET /najemis/1/edit
  def edit
  end

  # POST /najemis or /najemis.json
  def create
    @najemi = Najemi.new(najemi_params)

    existing_reservation = Najemi.where("dat_najema <= ? AND dat_konec_najema >= ? AND prebivalisca_id = ?", @najemi.dat_konec_najema, @najemi.dat_najema, @najemi.prebivalisca_id).exists?
    respond_to do |format|
      if existing_reservation
        format.html { redirect_to root_path, alert: "There is already a reservation between the selected dates." }
        format.json { render json: { error: "There is already a reservation between the selected dates." }, status: :unprocessable_entity }
      elsif @najemi.save
        format.html { redirect_to najemis_path, notice: "Reservation request was sucessfuly created. Please pay using the provided link" }
        format.json { render :show, status: :created, location: @najemi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @najemi.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /najemis/1 or /najemis/1.json
  def update
    respond_to do |format|
      if @najemi.update(najemi_params)
        format.html { redirect_to najemi_url(@najemi), notice: "Najemi was successfully updated." }
        format.json { render :show, status: :ok, location: @najemi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @najemi.errors, status: :unprocessable_entity }
      end
    end
  end
  def potrdi
    najemId = params[:id]
    @Najemtr = Najemi.find_by(id: najemId)
    if @Najemtr
      @Najemtr.update(payed: true)
      redirect_to najemis_path, notice: "Payment confirmed successfully."
    else
      redirect_to root_path, alert: "Najemi not found."
    end
  end

  # DELETE /najemis/1 or /najemis/1.json
  # “
  def destroy
    @najemi.destroy!

    respond_to do |format|
      format.html { redirect_to najemis_url, notice: "Najemi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_najemi
      @najemi = Najemi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def najemi_params
      params.require(:najemi).permit(:dat_najema, :dat_konec_najema, :user_id, :prebivalisca_id, :id)
    end
  def authorize_user!
    redirect_back fallback_location: root_path, alert: 'Nimate dostopa do te strani.' unless current_user.id == @najemi.user_id
  end
end
