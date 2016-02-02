class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :songname
      t.string :artist
      t.text :album
      t.string :duration

      t.timestamps null: false
    end
  end
end
