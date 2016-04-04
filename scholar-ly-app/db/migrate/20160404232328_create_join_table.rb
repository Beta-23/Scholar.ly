class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :students, :donors do |t|
      # t.index [:student_id, :donor_id]
      # t.index [:donor_id, :student_id]
    end
  end
end
