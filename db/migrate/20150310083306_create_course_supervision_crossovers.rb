class CreateCourseSupervisionCrossovers < ActiveRecord::Migration
  def change
    create_table :course_supervision_crossovers do |t|
      t.integer :course_crossover2_id
      t.integer :supervision_crossover_id

      t.timestamps null: false
    end
  end
end
