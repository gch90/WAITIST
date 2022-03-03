class AddWebsiteColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :website, :string
  end
end
