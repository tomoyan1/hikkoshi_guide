class RenameCategoryColumnToTasks < ActiveRecord::Migration[7.1]
  def change
    rename_column :tasks, :category, :category_id
  end
end
