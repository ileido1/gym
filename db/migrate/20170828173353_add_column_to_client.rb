class AddColumnToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :email, :string
    add_column :clients, :telefono, :integer
    add_column :clients, :direccion, :text
    add_column :clients, :nacimiento, :date
  end
end
