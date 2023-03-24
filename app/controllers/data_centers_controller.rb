class DataCentersController < ApplicationController
  before_action :set_data_center, only: %i[ show edit update destroy ]

  # GET /data_centers or /data_centers.json
  def index
    @data_centers = DataCenter.all
  end

  # GET /data_centers/1 or /data_centers/1.json
  def show
  end

  # GET /data_centers/new
  def new
    @data_center = DataCenter.new
  end

  # GET /data_centers/1/edit
  def edit
  end

  # POST /data_centers or /data_centers.json
  def create
    @data_center = DataCenter.new(data_center_params)

    respond_to do |format|
      if @data_center.save
        format.html { redirect_to data_center_url(@data_center), notice: "Data center was successfully created." }
        format.json { render :show, status: :created, location: @data_center }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @data_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_centers/1 or /data_centers/1.json
  def update
    respond_to do |format|
      if @data_center.update(data_center_params)
        format.html { redirect_to data_center_url(@data_center), notice: "Data center was successfully updated." }
        format.json { render :show, status: :ok, location: @data_center }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @data_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_centers/1 or /data_centers/1.json
  def destroy
    @data_center.destroy

    respond_to do |format|
      format.html { redirect_to data_centers_url, notice: "Data center was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_center
      @data_center = DataCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_center_params
      params.require(:data_center).permit(:device_type, :brand_model, :manufacturer, :department, :condition, :asset_state, :serial_number, :location)
    end
end
