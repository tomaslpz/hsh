class AddEsPremiumToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :esPremium, :boolean
  end
end
