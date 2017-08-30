class ClientMailer < ApplicationMailer
  def new_payment(payment)
    @clients = Client
    mail(to: @clients.email,subject:"Aviso de pago")
  end
end
