class PaymentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_payment, except: [:index,:new, :create]
  before_action :set_client, except:[:index]

 def index
   @payment = Payment.ultimos
   @timenow = Date.today - 1.month
   @timenow1 = Date.today
 end
 def show
 end
  def new
    @payments = Payment.new
    @type = PaymentType.all
    
  end
  def create
    @payments = Payment.new(payment_params)
    @payments.client = @client
    respond_to do |format|
          if @payments.save
            format.html { redirect_to @payments.client, notice: 'El pago ha sido creado correctamente.' }
            format.json { render :show, status: :created, location: @payments }
            format.json { render :show, status: :created, location: @payments.client }
          else
            format.html { render :new }
            format.json { render json: @payments.errors, status: :unprocessable_entity }
          end
        end
end

def destroy
end
  private
def set_client
@client = Client.find(params[:client_id])
end
def set_payment
@payment = Payment.find(params[:id])
end
  def payment_params
        params.require(:payment).permit(:fecha_payment,:client_id,:payment_type_id)
  end
end
