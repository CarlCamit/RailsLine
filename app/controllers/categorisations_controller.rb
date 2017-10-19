class CategorisationsController < ApplicationController
  before_action :set_categorisation, only: [:show, :edit, :update, :destroy]

  # GET /categorisations
  # GET /categorisations.json
  def index
    @categorisations = Categorisation.all
  end

  # GET /categorisations/1
  # GET /categorisations/1.json
  def show
  end

  # GET /categorisations/new
  def new
    @categorisation = Categorisation.new
  end

  # GET /categorisations/1/edit
  def edit
  end

  # POST /categorisations
  # POST /categorisations.json
  def create
    @categorisation = Categorisation.new(categorisation_params)

    respond_to do |format|
      if @categorisation.save
        format.html { redirect_to @categorisation, notice: 'Categorisation was successfully created.' }
        format.json { render :show, status: :created, location: @categorisation }
      else
        format.html { render :new }
        format.json { render json: @categorisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorisations/1
  # PATCH/PUT /categorisations/1.json
  def update
    respond_to do |format|
      if @categorisation.update(categorisation_params)
        format.html { redirect_to @categorisation, notice: 'Categorisation was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorisation }
      else
        format.html { render :edit }
        format.json { render json: @categorisation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorisations/1
  # DELETE /categorisations/1.json
  def destroy
    @categorisation.destroy
    respond_to do |format|
      format.html { redirect_to categorisations_url, notice: 'Categorisation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorisation
      @categorisation = Categorisation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorisation_params
      params.require(:categorisation).permit(:post_id, :category_id)
    end
end
