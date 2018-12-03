class AddDniToUser < ActiveRecord::Migration[5.2]
  def change
	add_column :users, :dni, :integer, :limit => 8
  end
end
