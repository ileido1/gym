class Payment < ApplicationRecord
  belongs_to :client
  belongs_to :payment_type
  scope :ultimos, -> { ("DISTINCT ON (client_id) * ").order("client_id, fecha_payment ASC") }
  #ultimos sqlite group(client_id).order("fecha_payment ASC")
  after_create :update_monto
  #after_create :send_mails

#def send_mails
#  ClientMailer.new_payment(self).deliver_later
#end

  def update_monto
     payment = Payment.last.payment_type_id
     monto = PaymentType.find_by(id: payment)
     monto2= monto.monto_type
    self.update_column(:monto_payment, monto2)
  end
end
