class HeadsetsController < ApplicationController
  before_action :set_headset, only: %i[ show edit update destroy ]

  # GET /headsets or /headsets.json
  def index
    @headsets = Headset.all
  end

  # GET /headsets/1 or /headsets/1.json
  def show
  end

  # GET /headsets/new
  def new
    @headset = Headset.new
  end

  # GET /headsets/1/edit
  def edit
  end

  # POST /headsets or /headsets.json
  def create
    @headset = Headset.new(headset_params)

    respond_to do |format|
      if @headset.save
        format.html { redirect_to headset_url(@headset), notice: "Headset was successfully created." }
        format.json { render :show, status: :created, location: @headset }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @headset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headsets/1 or /headsets/1.json
  def update
    respond_to do |format|
      if @headset.update(headset_params)
        format.html { redirect_to headset_url(@headset), notice: "Headset was successfully updated." }
        format.json { render :show, status: :ok, location: @headset }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @headset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headsets/1 or /headsets/1.json
  def destroy
    @headset.destroy

    respond_to do |format|
      format.html { redirect_to headsets_url, notice: "Headset was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headset
      @headset = Headset.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def headset_params
      params.require(:headset).permit(:manufacturer, :brand_model, :zone, :department, :desk_id, :condition, :asset_state, :serial_number, :location)
    end
end
