class AddWaiterAndRestaurantToChatrooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :chatrooms, :waiter, null: false, foreign_key: { to_table: :users}
    add_reference :chatrooms, :restaurant, null: false, foreign_key: { to_table: :users}
  end
end
