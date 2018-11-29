class AddUserConfigRelationToUser < ActiveRecord::Migration[5.2]
	def change
		add_column :users, :user_configs_id, :integer
		add_index 'users', ['user_configs_id'], :name => 'index_configsuser_id' 
	end
end
