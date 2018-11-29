class ReplaceCodTarjetaFromUser < ActiveRecord::Migration[5.2]
	def change
		if column_exists? :users, :numTarjeta
			remove_column :users, :numTarjeta, :integer
		end
		add_column :users, :numTarjeta, :integer, :limit => 8
	end
end
