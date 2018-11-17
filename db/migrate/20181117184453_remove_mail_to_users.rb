class RemoveMailToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :mail, :string
    add_column :users, :email, :string
  end
end
