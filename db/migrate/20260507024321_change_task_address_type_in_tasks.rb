class ChangeTaskAddressTypeInTasks < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :task_address, :text
  end
end
