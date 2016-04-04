class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.decimal :donations
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :type_profession
      t.string :password_diggest

      t.timestamps null: false
    end
  end
end
