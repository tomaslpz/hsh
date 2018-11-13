class AddBidsAssociationToBlock < ActiveRecord::Migration[5.2]
	def self.up
		add_column :bids, :block_id, :integer
		add_index 'bids', ['block_id'], :name => 'index_bidblock_id' 
	end
  
	def self.down
		remove_column :bids, :block_id
	end
end
