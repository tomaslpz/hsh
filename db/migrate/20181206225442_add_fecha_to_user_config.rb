class AddFechaToUserConfig < ActiveRecord::Migration[5.2]
  def change
	add_column :user_configs, :fechaPremium, :date
  end
end
