class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :subject
      t.string :teacher
      t.integer :mark_1
      t.integer :mark_2
      t.integer :mark_3

      t.timestamps
    end
  end
end
