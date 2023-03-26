class AiosController < ApplicationController
  before_action :set_aio, only: %i[ show edit update destroy ]

  # GET /aios or /aios.json
  def index
    @aios = Aio.all
  end

  # GET /aios/1 or /aios/1.json
  def show
  end

  # GET /aios/new
  def new
    @aio = Aio.new
  end

  # GET /aios/1/edit
  def edit
  end

  # POST /aios or /aios.json
  def create
    @aio = Aio.new(aio_params)

    respond_to do |format|
      if @aio.save
        format.html { redirect_to aio_url(@aio), notice: "Aio was successfully created." }
        format.json { render :show, status: :created, location: @aio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aios/1 or /aios/1.json
  def update
    respond_to do |format|
      if @aio.update(aio_params)
        format.html { redirect_to aio_url(@aio), notice: "Aio was successfully updated." }
        format.json { render :show, status: :ok, location: @aio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aios/1 or /aios/1.json
  def destroy
    @aio.destroy

    respond_to do |format|
      format.html { redirect_to aios_url, notice: "Aio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aio
      @aio = Aio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aio_params
      params.require(:aio).permit(:manufacturer, :brand_model, :zone, :department, :desk_id, :condition, :asset_state, :serial_number, :location, :ssd)
    end
end
