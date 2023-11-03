class IngridientsController < ApplicationController
  before_action :set_ingridient, only: %i[ show edit update destroy ]

  # GET /ingridients or /ingridients.json
  def index
    @ingridients = Ingridient.all
  end

  # GET /ingridients/1 or /ingridients/1.json
  def show
  end

  # GET /ingridients/new
  def new
    @ingridient = Ingridient.new
  end

  # GET /ingridients/1/edit
  def edit
  end

  # POST /ingridients or /ingridients.json
  def create
    @ingridient = Ingridient.new(ingridient_params)

    respond_to do |format|
      if @ingridient.save
        format.html { redirect_to ingridient_url(@ingridient), notice: "Ingridient was successfully created." }
        format.json { render :show, status: :created, location: @ingridient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingridient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingridients/1 or /ingridients/1.json
  def update
    respond_to do |format|
      if @ingridient.update(ingridient_params)
        format.html { redirect_to ingridient_url(@ingridient), notice: "Ingridient was successfully updated." }
        format.json { render :show, status: :ok, location: @ingridient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingridient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingridients/1 or /ingridients/1.json
  def destroy
    @ingridient.destroy

    respond_to do |format|
      format.html { redirect_to ingridients_url, notice: "Ingridient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingridient
      @ingridient = Ingridient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingridient_params
      params.require(:ingridient).permit(:kcalorie_count, :protein_count, :carbohydrate_count, :fat_count, :weight_in_gramms, :description)
    end
end
