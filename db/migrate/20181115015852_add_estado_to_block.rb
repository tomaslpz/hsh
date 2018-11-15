class AddEstadoToBlock < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :estado, :integer
  end
end
