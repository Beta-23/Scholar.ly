class RenamePasswordDiggestToPasswordDigest < ActiveRecord::Migration
  def change
    rename_column :students, :password_diggest, :password_digest
  end
end
