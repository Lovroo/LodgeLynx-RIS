class FavoritesController < ApplicationController
  before_action :set_favorite, only: %i[ show edit update destroy ]

  # GET /favorites or /favorites.json
  def index
    if params[:q]
      redirect_to root_path(q: params[:q])
    else
    @favorites = Favorite.all
    end
  end

  # GET /favorites/1 or /favorites/1.json
  def show
    if params[:q]
      redirect_to root_path(q: params[:q])
    end
  end

  # GET /favorites/new
  def new
    @favorite = Favorite.new
  end

  # GET /favorites/1/edit
  def edit
  end

  # POST /favorites or /favorites.json
  def create
    @favorite = Favorite.new(favorite_params)

    respond_to do |format|
      if @favorite.save
        format.html { redirect_to favorite_url(@favorite), notice: "Favorite was successfully created." }
        format.json { render :show, status: :created, location: @favorite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorites/1 or /favorites/1.json
  def update
    respond_to do |format|
      if @favorite.update(favorite_params)
        format.html { redirect_to favorite_url(@favorite), notice: "Favorite was successfully updated." }
        format.json { render :show, status: :ok, location: @favorite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorites/1 or /favorites/1.json
  def destroy
    @favorite.destroy!

    respond_to do |format|
      format.html { redirect_to favorites_url, notice: "Favorite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def add_To_favorites
    prebivalisce_id = params[:prebivalisceID]
    userid = current_user.id
    # Perform operations to add the item to favorites
    # For example:
    existing_favorite = Favorite.find_by(user_id: userid, prebivalisca_id: prebivalisce_id)

    if existing_favorite
      redirect_to root_path, notice: "nc nebo lil bro ze obstaja"
    else
      @favorite = Favorite.new(user_id: userid, prebivalisca_id: prebivalisce_id)

      if @favorite.save 
        redirect_to root_path, notice: "Added to favorites successfully"
      else
        puts "No"
      end
    end
  end

  def redirect_to_prebivalisca_show(favorite)
    prebivalisca = Prebivalisca.find_by(id: favorite.prebivalisca_id)
    if prebivalisca
      redirect_to prebivalisca_path(prebivalisca)
    else
      redirect_to root_path, notice: "Prebivalisca not found"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_params
      params.fetch(:favorite, {})
    end
end
