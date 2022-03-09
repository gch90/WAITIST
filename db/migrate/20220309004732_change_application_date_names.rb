class ChangeApplicationDateNames < ActiveRecord::Migration[6.1]
  def change
    change_column :applications, :start_time, :datetime
    change_column :applications, :end_time, :datetime
    rename_column :applications, :start_time, :start_time
    rename_column :applications, :end_time, :end_time

  end
end
