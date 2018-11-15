class DeleteEnsubastaFromBlock < ActiveRecord::Migration[5.2]
  def change
	remove_column :blocks, :ensubasta, :boolean
  end
end
