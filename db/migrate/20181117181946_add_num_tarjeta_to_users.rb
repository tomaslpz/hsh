class AddNumTarjetaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :numTarjeta, :integer
  end
end
