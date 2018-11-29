class AddEntriesAssociationToUser < ActiveRecord::Migration[5.2]
  def self.up
    add_index 'entries', ['user_id'], :name => 'index_user_id'
  end
end
