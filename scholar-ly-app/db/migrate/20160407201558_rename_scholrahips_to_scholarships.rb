class RenameScholrahipsToScholarships < ActiveRecord::Migration
  def change
    rename_column :students, :scholarhips, :scholarships

  end
end
