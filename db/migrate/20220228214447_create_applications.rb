class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.references :waiter, foreign_key: { to_table: :users }
      t.references :restaurant, foreign_key: { to_table: :users }
      t.date :start_date
      t.date :end_date
      t.integer :status, default: 0
      t.integer :rating
      t.timestamps
    end
  end
end
