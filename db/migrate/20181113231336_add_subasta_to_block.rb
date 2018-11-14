class AddSubastaToBlock < ActiveRecord::Migration[5.2]
  def change
    add_column :blocks, :ensubasta, :boolean
  end
end
