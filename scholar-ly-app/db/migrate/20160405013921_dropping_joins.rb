class DroppingJoins < ActiveRecord::Migration
  def change
    drop_table :students_donors
    drop_table :donors_students
  end
end
