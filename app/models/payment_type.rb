class PaymentType < ApplicationRecord
  has_many :payments
  has_many :clients, :through => :payments
  def descripcion_monto
   "#{descripcion_type}. #{monto_type}"
 end
end
