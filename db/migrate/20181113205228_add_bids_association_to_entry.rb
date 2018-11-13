class AddBidsAssociationToEntry < ActiveRecord::Migration[5.2]

	def self.up
		add_column :bids, :entry_id, :integer
		add_index 'bids', ['entry_id'], :name => 'index_entry_id' 
	end
  
	def self.down
		remove_column :bids, :entry_id
	end

end
