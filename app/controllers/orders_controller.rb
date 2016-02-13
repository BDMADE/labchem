class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout 'admin'
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @form_title='Record'
  end

  # GET /orders/new
  def new
    @order = Order.new
    @form_title='New'

  end

  # GET /orders/1/edit
  def edit
    @form_title='Edit'

  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { if (params[:ajax_save])
                        redirect_to new_order_path, notice: 'Customer was successfully created.'
                      else

                        redirect_to orders_path, notice: 'Customer was successfully created.'
                      end}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { if (params[:ajax_save])
                        redirect_to new_order_path, notice: 'Customer was successfully created.'
                      else

                        redirect_to order_path, notice: 'Customer was successfully created.'
                      end }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, alert: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    params.require(:order).permit(:order_total,:date_received, :status_id,:shipmentmethod_id, :date_shipped,:shipment_cost, :tax, :notes, :total, :customer_id)
  end
end