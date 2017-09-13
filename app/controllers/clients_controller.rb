class ClientsController < ApplicationController
  before_action :authenticate_user!

  def index
  @clients =  Client.all.page(params[:page]).per(8)
  end

  def show
  @Clients = Client.find(params[:id])
  @payments = Payment.new
  @type = PaymentType.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    respond_to do |format|
            if @client.save
              format.html { redirect_to @client, notice: 'Cliente añadido correctamente.' }
              format.json { render :show, status: :created, location: @client }
            else
              format.html { render :new }
              format.json { render json: @client.errors, status: :unprocessable_entity }
            end
        end
    end

  def destroy
      @Client = Client.find(params[:id])
      @Client.destroy
      redirect_to clients_path
  end


  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
     redirect_to @client
   else
     render :edit
   end
  end


  private

  def client_params
        params.require(:client).permit(:nombre, :apellido, :cedula, :foto, :email, :telefono, :direccion, :nacimiento)
  end

end
