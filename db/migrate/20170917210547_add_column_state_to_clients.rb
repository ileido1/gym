class AddColumnStateToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :state, :string, default: "Activo"
  end
end
