class NajemisController < ApplicationController
  before_action :set_najemi, only: %i[ show edit update destroy ]

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

    respond_to do |format|
      if @najemi.save
        format.html { redirect_to najemi_url(@najemi), notice: "Najemi was successfully created." }
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

  # DELETE /najemis/1 or /najemis/1.json
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
      params.require(:najemi).permit(:dat_najema, :dat_konec_najema)
    end
end
