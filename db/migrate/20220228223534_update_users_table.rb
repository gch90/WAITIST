class UpdateUsersTable < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :description, :text
    add_column :users, :user_role, :integer, default: 0
    add_column :users, :rate, :float, default: 0
    add_column :users, :restaurant_name, :string
    add_column :users, :restaurant_type, :string
    add_column :users, :summary, :string
  end
end
