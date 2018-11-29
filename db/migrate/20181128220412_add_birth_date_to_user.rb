class AddBirthDateToUser < ActiveRecord::Migration[5.2]
  def change
	unless column_exists? :users, :birth_date
		add_column :users, :birth_date, :date
	end
  end
end
