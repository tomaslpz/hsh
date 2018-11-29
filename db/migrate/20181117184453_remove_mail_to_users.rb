class RemoveMailToUsers < ActiveRecord::Migration[5.2]
  def change
	if column_exists? :users, :mail
    	remove_column :users, :mail, :string
	end
	add_column :users, :email, :string
  end
end
