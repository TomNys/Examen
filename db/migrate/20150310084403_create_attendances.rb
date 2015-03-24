class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :student_crossover_id
      t.integer :supervision_crossover_id
      t.boolean :present

      t.timestamps null: false
    end
  end
end
