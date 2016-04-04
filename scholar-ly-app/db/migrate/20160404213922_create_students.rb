class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.decimal :scholarhips
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :type_student_grade_level
      t.string :password_diggest

      t.timestamps null: false
    end
  end
end
