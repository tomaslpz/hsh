class CreateUserConfig < ActiveRecord::Migration[5.2]
  def change
	create_table :user_configs do |t|
		t.boolean :esPremium
    	t.integer :creditos

		t.integer :user_id

    	t.timestamps
    end
  end
end
