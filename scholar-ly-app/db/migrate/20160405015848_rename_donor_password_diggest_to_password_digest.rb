class RenameDonorPasswordDiggestToPasswordDigest < ActiveRecord::Migration
  def change
    rename_column :donors, :password_diggest, :password_digest
  end
end
