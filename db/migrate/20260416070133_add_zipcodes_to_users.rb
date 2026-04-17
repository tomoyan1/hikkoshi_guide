class AddZipcodesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :old_zipcode, :string
    add_column :users, :new_zipcode, :string
  end
end
