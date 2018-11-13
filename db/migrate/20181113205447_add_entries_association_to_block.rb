class AddEntriesAssociationToBlock < ActiveRecord::Migration[5.2]

	def self.up
		add_column :entries, :block_id, :integer
		add_index 'entries', ['block_id'], :name => 'index_block_id' 
	end
  
	def self.down
		remove_column :entries, :block_id
	end

end
