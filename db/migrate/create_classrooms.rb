class CreateClassrooms < ActiveRecord::Migration
  def up
    create_table :classrooms do |t|
      t.string :nickname
      t.date :start_date
      t.date :end_date
      t.string :class_type
      t.string :topic
    end
  end
  def down
    drop_table :classrooms
  end
end
