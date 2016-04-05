class CreateStudentDonors < ActiveRecord::Migration
  def change
    create_table :student_donors do |t|
      t.integer :donor_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
