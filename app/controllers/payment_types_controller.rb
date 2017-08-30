class PaymentTypesController < ApplicationController
  def index
    @type = PaymentType.all
  end
  def new
    @types = PaymentType.new
  end
  def create
    @types = PaymentType.new(payment_types_params)

    respond_to do |format|
          if @types.save
            format.html { redirect_to @types, notice: 'El tipo de pago was successfully created.' }
            format.json { render :show, status: :created, location: @types }
            format.json { render :show, status: :created, location: @types }
          else
            format.html { render :new }
            format.json { render json: @types.errors, status: :unprocessable_entity }
          end
        end
end
def show
  @types = PaymentType.find(params[:id])
end
def edit
  @types = PaymentType.find(params[:id])
end
def update
  @types = PaymentType.find(params[:id])
  if @types.update(payment_types_params)
   redirect_to @types
 else
   render :edit
end
end
  private
    def payment_types_params
        params.require(:payment_type).permit(:descripcion_type, :monto_type)
  end
end
