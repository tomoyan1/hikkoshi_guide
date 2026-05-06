class RenameStatusColumnToTasks < ActiveRecord::Migration[7.1]
  def change
    rename_column :tasks, :status, :status_id
  end
end
