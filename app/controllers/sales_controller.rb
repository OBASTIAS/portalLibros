class SalesController < ApplicationController
  before_action :set_sale, only: %i[ show edit update destroy ]

  # GET /sales or /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1 or /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    byebug
    @sale = Sale.new
    
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales or /sales.json
  def create
    byebug
    @reservation = Reservation.find(params[:reservation_id])
    byebug
    @sale = Sale.new(sale_params)
    @sale = Sale.new(sale_params)


    
    respond_to do |format|
      if @sale.save
        format.html { redirect_to sale_url(@sale), notice: "Sale was successfully created." }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /sales/1 or /sales/1.json
  def destroy
    @sale.destroy

    respond_to do |format|
      format.html { redirect_to sales_url, notice: "Sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_params
      params.require(:sale).permit(:paymentMethod, :reservation_id)
    end
end
