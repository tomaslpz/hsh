class AddIndexToAdminsCodigo < ActiveRecord::Migration[5.2]
  def change
      add_index :admins, :codigo, unique: true
  end
end
