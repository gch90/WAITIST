class AddRatingsToApplication < ActiveRecord::Migration[6.1]
  def change
    add_column :applications, :waiter_rating, :float
    add_column :applications, :restaurant_rating, :float
    add_column :applications, :restaurant_comment, :text
    add_column :applications, :waiter_comment, :text
  end
end
