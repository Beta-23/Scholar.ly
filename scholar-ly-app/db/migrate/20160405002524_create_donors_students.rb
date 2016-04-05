class CreateDonorsStudents < ActiveRecord::Migration
  def change
    create_table :donors_students do |t|
      t.references :student, index: true, foreign_key: true
      t.references :donor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
