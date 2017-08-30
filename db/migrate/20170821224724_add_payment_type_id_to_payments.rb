class AddPaymentTypeIdToPayments < ActiveRecord::Migration[5.1]
  def change
    add_reference :payments, :payment_type, foreign_key: true
  end
end
