class DisplayMonitorsController < ApplicationController
  before_action :set_display_monitor, only: %i[ show edit update destroy ]

  # GET /display_monitors or /display_monitors.json
  def index
    @display_monitors = DisplayMonitor.all
  end

  # GET /display_monitors/1 or /display_monitors/1.json
  def show
  end

  # GET /display_monitors/new
  def new
    @display_monitor = DisplayMonitor.new
  end

  # GET /display_monitors/1/edit
  def edit
  end

  # POST /display_monitors or /display_monitors.json
  def create
    @display_monitor = DisplayMonitor.new(display_monitor_params)

    respond_to do |format|
      if @display_monitor.save
        format.html { redirect_to display_monitor_url(@display_monitor), notice: "Display monitor was successfully created." }
        format.json { render :show, status: :created, location: @display_monitor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @display_monitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /display_monitors/1 or /display_monitors/1.json
  def update
    respond_to do |format|
      if @display_monitor.update(display_monitor_params)
        format.html { redirect_to display_monitor_url(@display_monitor), notice: "Display monitor was successfully updated." }
        format.json { render :show, status: :ok, location: @display_monitor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @display_monitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /display_monitors/1 or /display_monitors/1.json
  def destroy
    @display_monitor.destroy

    respond_to do |format|
      format.html { redirect_to display_monitors_url, notice: "Display monitor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_display_monitor
      @display_monitor = DisplayMonitor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def display_monitor_params
      params.require(:display_monitor).permit(:manufacturer, :brand_model, :zone, :department, :desk_id, :condition, :asset_state, :serial_number, :location)
    end
end
