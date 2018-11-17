class AddCodigoTarjetaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :codTarjeta, :integer
  end
end
