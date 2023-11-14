class ComidasController < ApplicationController
  before_action :set_comida, only: %i[ show edit update destroy ]

  # GET /comidas or /comidas.json
  def index
    @comidas = Comida.all
  end

  # GET /comidas/1 or /comidas/1.json
  def show
  end

  # GET /comidas/new
  def new
    @comida = Comida.new
  end

  # GET /comidas/1/edit
  def edit
  end

  # POST /comidas or /comidas.json
  def create
    @comida = Comida.new(comida_params)

    respond_to do |format|
      if @comida.save
        format.html { redirect_to comida_url(@comida), notice: "Comida was successfully created." }
        format.json { render :show, status: :created, location: @comida }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comidas/1 or /comidas/1.json
  def update
    respond_to do |format|
      if @comida.update(comida_params)
        format.html { redirect_to comida_url(@comida), notice: "Comida was successfully updated." }
        format.json { render :show, status: :ok, location: @comida }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comidas/1 or /comidas/1.json
  def destroy
    @comida.destroy!

    respond_to do |format|
      format.html { redirect_to comidas_url, notice: "Comida was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comida
      @comida = Comida.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comida_params
      params.require(:comida).permit(:nome, :tipo, :descricao, :preco)
    end
end
