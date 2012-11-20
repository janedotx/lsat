class CreateUsersAndOtherStuff < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :screen_name
      t.binary :diagnostic_scores
    end
  end

  def down
  end
end
