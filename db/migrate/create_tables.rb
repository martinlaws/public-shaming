class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |column|
      column.string :name
      column.string :photo_url
      column.integer :gold_stars
      column.integer :black_squares
      column.integer :class_id
      column.timestamps
    end
    create_table :classrooms do |t|
      t.string :nickname
      t.date :start_date
      t.date :end_date
      t.string :class_type
      t.string :topic
    end
  end
end
