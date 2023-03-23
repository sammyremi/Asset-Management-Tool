class MiceController < ApplicationController
  before_action :set_mouse, only: %i[ show edit update destroy ]

  # GET /mice or /mice.json
  def index
    @mice = Mouse.all
  end

  # GET /mice/1 or /mice/1.json
  def show
  end

  # GET /mice/new
  def new
    @mouse = Mouse.new
  end

  # GET /mice/1/edit
  def edit
  end

  # POST /mice or /mice.json
  def create
    @mouse = Mouse.new(mouse_params)

    respond_to do |format|
      if @mouse.save
        format.html { redirect_to mouse_url(@mouse), notice: "Mouse was successfully created." }
        format.json { render :show, status: :created, location: @mouse }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mice/1 or /mice/1.json
  def update
    respond_to do |format|
      if @mouse.update(mouse_params)
        format.html { redirect_to mouse_url(@mouse), notice: "Mouse was successfully updated." }
        format.json { render :show, status: :ok, location: @mouse }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mice/1 or /mice/1.json
  def destroy
    @mouse.destroy

    respond_to do |format|
      format.html { redirect_to mice_url, notice: "Mouse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mouse
      @mouse = Mouse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mouse_params
      params.require(:mouse).permit(:manufacturer, :brand_model, :zone, :department, :desk_id, :condition, :asset_state, :serial_number, :location)
    end
end
