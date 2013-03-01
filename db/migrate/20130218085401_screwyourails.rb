class Screwyourails < ActiveRecord::Migration
  def up
    add_column :lessons, :video_ids, :binary
    add_column :lsat_tests, :timed, :boolean
  end

  def down
  end
end
