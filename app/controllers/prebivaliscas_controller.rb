class PrebivaliscasController < ApplicationController
  before_action :set_prebivalisca, only: %i[ show edit update destroy ]

  # GET /prebivaliscas or /prebivaliscas.json
  def index
    if params[:q]
      @prebivaliscas = Prebivalisca.where("lower(Name) LIKE ? OR lower(Lokacija) LIKE ? OR lower(description) LIKE ?", "%#{params[:q].downcase}%", "%#{params[:q].downcase}%", "%#{params[:q].downcase}%")
    else
      @prebivaliscas = Prebivalisca.all
    end
  end

  # GET /prebivaliscas/1 or /prebivaliscas/1.json
  def show
    if params[:q]
      redirect_to root_path(q: params[:q])
    else
      @prebivaliscas = Prebivalisca.all
    end
  end

  # GET /prebivaliscas/new
  def new
    @prebivalisca = Prebivalisca.new
  end

  # GET /prebivaliscas/1/edit
  def edit
  end

  # POST /prebivaliscas or /prebivaliscas.json
  def create
    @prebivalisca = Prebivalisca.new(prebivalisca_params)
    @prebivalisca.user = current_user

    respond_to do |format|
      if @prebivalisca.save
        format.html { redirect_to prebivalisca_url(@prebivalisca), notice: "Prebivalisca was successfully created." }
        format.json { render :show, status: :created, location: @prebivalisca }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prebivalisca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prebivaliscas/1 or /prebivaliscas/1.json
  def update
    respond_to do |format|
      if @prebivalisca.update(prebivalisca_params)
        format.html { redirect_to prebivalisca_url(@prebivalisca), notice: "Prebivalisca was successfully updated." }
        format.json { render :show, status: :ok, location: @prebivalisca }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prebivalisca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prebivaliscas/1 or /prebivaliscas/1.json
  def destroy
    @prebivalisca.destroy!

    respond_to do |format|
      format.html { redirect_to prebivaliscas_url, notice: "Prebivalisca was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prebivalisca
      @prebivalisca = Prebivalisca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prebivalisca_params
      params.require(:prebivalisca).permit(:Name, :rating, :kvadratura, :cena, :image, :description, :lokacija)
    end
end
