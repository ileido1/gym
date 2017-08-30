class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.timestamps
    end
  end
end
