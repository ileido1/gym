class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.string :descripcion_type
      t.integer :monto_type

      t.timestamps
    end
  end
end
