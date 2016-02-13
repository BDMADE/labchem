class ShipmentmethodsController < ApplicationController
  before_action :set_shipmentmethod, only: [:show, :edit, :update, :destroy]

  # GET /shipmentmethods
  # GET /shipmentmethods.json
  def index
    @shipmentmethods = Shipmentmethod.all
  end

  # GET /shipmentmethods/1
  # GET /shipmentmethods/1.json
  def show
  end

  # GET /shipmentmethods/new
  def new
    @shipmentmethod = Shipmentmethod.new
  end

  # GET /shipmentmethods/1/edit
  def edit
  end

  # POST /shipmentmethods
  # POST /shipmentmethods.json
  def create
    @shipmentmethod = Shipmentmethod.new(shipmentmethod_params)

    respond_to do |format|
      if @shipmentmethod.save
        format.html { redirect_to @shipmentmethod, notice: 'Shipmentmethod was successfully created.' }
        format.json { render :show, status: :created, location: @shipmentmethod }
      else
        format.html { render :new }
        format.json { render json: @shipmentmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipmentmethods/1
  # PATCH/PUT /shipmentmethods/1.json
  def update
    respond_to do |format|
      if @shipmentmethod.update(shipmentmethod_params)
        format.html { redirect_to @shipmentmethod, notice: 'Shipmentmethod was successfully updated.' }
        format.json { render :show, status: :ok, location: @shipmentmethod }
      else
        format.html { render :edit }
        format.json { render json: @shipmentmethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipmentmethods/1
  # DELETE /shipmentmethods/1.json
  def destroy
    @shipmentmethod.destroy
    respond_to do |format|
      format.html { redirect_to shipmentmethods_url, notice: 'Shipmentmethod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipmentmethod
      @shipmentmethod = Shipmentmethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shipmentmethod_params
      params.require(:shipmentmethod).permit(:name)
    end
end
