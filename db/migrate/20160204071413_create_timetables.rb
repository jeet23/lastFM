class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.references :list, index: true, foreign_key: true
      t.datetime :playtime

      t.timestamps null: false
    end
  end
end
