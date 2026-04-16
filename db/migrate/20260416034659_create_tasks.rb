class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :task_type
      t.date :due_date
      t.date :completed_at
      t.integer :status
      t.integer :category
      t.string :task_address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
