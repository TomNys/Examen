class CreateStudentCourseCrossovers < ActiveRecord::Migration
  def change
    create_table :student_class_crossovers do |t|
      t.integer :student_crossover_id
      t.integer :course_crossover1_id

      t.timestamps null: false
    end
  end
end
