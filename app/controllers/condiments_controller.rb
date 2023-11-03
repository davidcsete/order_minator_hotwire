class CondimentsController < ApplicationController
  before_action :set_condiment, only: %i[ show edit update destroy ]

  # GET /condiments or /condiments.json
  def index
    @condiments = Condiment.all
  end

  # GET /condiments/1 or /condiments/1.json
  def show
  end

  # GET /condiments/new
  def new
    @condiment = Condiment.new
  end

  # GET /condiments/1/edit
  def edit
  end

  # POST /condiments or /condiments.json
  def create
    @condiment = Condiment.new(condiment_params)

    respond_to do |format|
      if @condiment.save
        format.html { redirect_to condiment_url(@condiment), notice: "Condiment was successfully created." }
        format.json { render :show, status: :created, location: @condiment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @condiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condiments/1 or /condiments/1.json
  def update
    respond_to do |format|
      if @condiment.update(condiment_params)
        format.html { redirect_to condiment_url(@condiment), notice: "Condiment was successfully updated." }
        format.json { render :show, status: :ok, location: @condiment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @condiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condiments/1 or /condiments/1.json
  def destroy
    @condiment.destroy

    respond_to do |format|
      format.html { redirect_to condiments_url, notice: "Condiment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condiment
      @condiment = Condiment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def condiment_params
      params.require(:condiment).permit(:name, :quantity_in_grams, :description)
    end
end
