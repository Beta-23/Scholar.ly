class CreateStudentsDonors < ActiveRecord::Migration
  def change
    create_table :students_donors do |t|
      t.references :student, index: true, foreign_key: true
      t.references :donor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
