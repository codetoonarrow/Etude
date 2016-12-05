class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.datetime "time"
      t.integer "student_id"
      t.integer "teacher_id"
      t.timestamps
    end
  end
end
