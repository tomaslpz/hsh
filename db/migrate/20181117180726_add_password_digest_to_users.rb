class AddPasswordDigestToUsers < ActiveRecord::Migration[5.2]
  def change
	create_table :users do |t|
		t.timestamps
	end
    add_column :users, :password_digest, :string
  end
end
