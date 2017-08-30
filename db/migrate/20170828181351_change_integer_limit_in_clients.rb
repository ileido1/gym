class ChangeIntegerLimitInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :telefono, :integer, limit: 8
  end
end
