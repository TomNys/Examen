class CreateClassroomTypes < ActiveRecord::Migration
  def change
    create_table :classroom_types do |t|
      t.string :name
      t.string :abbreviation
      t.string :description

      t.timestamps null: false
    end
  end
end
