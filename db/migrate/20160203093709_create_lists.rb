class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :member, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true
      t.boolean :fav

      t.timestamps null: false
    end
  end
end
