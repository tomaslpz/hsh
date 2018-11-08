class RemovePaisFromResidence < ActiveRecord::Migration[5.2]
  def change
    remove_column :residences, :pais, :string
  end
end
