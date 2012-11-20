class AddMoreToUsers < ActiveRecord::Migration
  def change
    add_column :users, :salt, :string
    add_column :users, :hashed_password, :string
    add_column :users, :current_test_type, :string
    add_column :users, :current_section_type, :string
  end
end
