class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout 'admin'
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @form_title='Show'
  end

  # GET /customers/new
  def new
    @form_title='New'
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @form_title='Edit'
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html {

          if (params[:ajax_save])
            redirect_to new_customer_path, notice: 'Customer was successfully created.'
          else
            redirect_to customers_path, notice: 'Customer was successfully created.'
          end

        }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html {

          if (params[:ajax_save])
            redirect_to edit_customer_path, notice: 'Your data has been successfully updated'
          else
            redirect_to customers_path, notice: 'Your data has been successfully updated'
          end

        }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, alert: 'Your data has been successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_customer
    @customer = Customer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def customer_params
    params.require(:customer).permit(:name, :phone1, :phone2, :email, :company, :delivery_address, :uid)
  end
end
