class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :monto_payment
      t.date :fecha_payment

      t.timestamps
    end
  end
end
