class AddPrecioToBlock < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :precio, :float
  end
end
