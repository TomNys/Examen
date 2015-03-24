class CreateSpecializations < ActiveRecord::Migration
  def change
    create_table :specializations do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
