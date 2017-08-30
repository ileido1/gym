class AddClientIdToPayments < ActiveRecord::Migration[5.1]
  def change
    add_reference :payments, :client, foreign_key: true
  end
end
