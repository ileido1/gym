class AddCoverToClients < ActiveRecord::Migration[5.1]
  def change
    add_attachment :clients,:foto
  end
end
