class AddPasswordColumn < ActiveRecord::Migration
  def up
    add_column :users, :password, :string
    remove_column :users, :hashed_password
  end

  def down
  end
end
