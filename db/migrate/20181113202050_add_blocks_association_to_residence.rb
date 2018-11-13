class AddBlocksAssociationToResidence < ActiveRecord::Migration[5.2]

	def self.up
		add_column :blocks, :residence_id, :integer
		add_index 'blocks', ['residence_id'], :name => 'index_residence_id' 
	end
  
	def self.down
		remove_column :blocks, :residence_id
	end

end
