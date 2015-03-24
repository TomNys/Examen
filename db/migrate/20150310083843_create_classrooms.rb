class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :number
      t.integer :classroom_type_id

      t.timestamps null: false
    end
  end
end
