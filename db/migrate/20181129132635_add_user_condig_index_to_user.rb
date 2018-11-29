class AddUserCondigIndexToUser < ActiveRecord::Migration[5.2]
	def change
		add_index 'user_configs', ['user_id'], :name => 'index_userconfigs_id' 
	end
end
