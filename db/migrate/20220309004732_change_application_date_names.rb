class ChangeApplicationDateNames < ActiveRecord::Migration[6.1]
  def change
    change_column :applications, :start_date, :datetime
    change_column :applications, :end_date, :datetime
    rename_column :applications, :start_date, :start_time
    rename_column :applications, :end_date, :end_time

  end
end
