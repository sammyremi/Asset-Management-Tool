class IpPhonesController < ApplicationController
  before_action :set_ip_phone, only: %i[ show edit update destroy ]

  # GET /ip_phones or /ip_phones.json
  def index
    @ip_phones = IpPhone.all
  end

  # GET /ip_phones/1 or /ip_phones/1.json
  def show
  end

  # GET /ip_phones/new
  def new
    @ip_phone = IpPhone.new
  end

  # GET /ip_phones/1/edit
  def edit
  end

  # POST /ip_phones or /ip_phones.json
  def create
    @ip_phone = IpPhone.new(ip_phone_params)

    respond_to do |format|
      if @ip_phone.save
        format.html { redirect_to ip_phone_url(@ip_phone), notice: "Ip phone was successfully created." }
        format.json { render :show, status: :created, location: @ip_phone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ip_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_phones/1 or /ip_phones/1.json
  def update
    respond_to do |format|
      if @ip_phone.update(ip_phone_params)
        format.html { redirect_to ip_phone_url(@ip_phone), notice: "Ip phone was successfully updated." }
        format.json { render :show, status: :ok, location: @ip_phone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ip_phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_phones/1 or /ip_phones/1.json
  def destroy
    @ip_phone.destroy

    respond_to do |format|
      format.html { redirect_to ip_phones_url, notice: "Ip phone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_phone
      @ip_phone = IpPhone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ip_phone_params
      params.require(:ip_phone).permit(:manufacturer, :brand_model, :zone, :department, :condition, :asset_state, :serial_number, :location)
    end
end
