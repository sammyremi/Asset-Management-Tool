class SmartPhonesController < ApplicationController
  before_action :set_smart_phone, only: %i[ show edit update destroy ]

  # GET /smart_phones or /smart_phones.json
  def index
    @smart_phones = SmartPhone.all
  end

  # GET /smart_phones/1 or /smart_phones/1.json
  def show
  end

  # GET /smart_phones/new
  def new
    @smart_phone = SmartPhone.new
  end

  # GET /smart_phones/1/edit
  def edit
  end

  # POST /smart_phones or /smart_phones.json
  def create
    @smart_phone = SmartPhone.new(smart_phone_params)

    respond_to do |format|
      if @smart_phone.save
        format.html { redirect_to smart_phone_url(@smart_phone), notice: "Smart phone was successfully created." }
        format.json { render :show, status: :created, location: @smart_phone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @smart_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smart_phones/1 or /smart_phones/1.json
  def update
    respond_to do |format|
      if @smart_phone.update(smart_phone_params)
        format.html { redirect_to smart_phone_url(@smart_phone), notice: "Smart phone was successfully updated." }
        format.json { render :show, status: :ok, location: @smart_phone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @smart_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smart_phones/1 or /smart_phones/1.json
  def destroy
    @smart_phone.destroy

    respond_to do |format|
      format.html { redirect_to smart_phones_url, notice: "Smart phone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smart_phone
      @smart_phone = SmartPhone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def smart_phone_params
      params.require(:smart_phone).permit(:manufacturer, :brand_model, :zone, :department, :condition, :asset_state, :serial_number, :location)
    end
end
