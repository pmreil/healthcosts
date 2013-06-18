class RenameTypeColumn < ActiveRecord::Migration
  def up
    rename_column :hospitals, :type, :hospital_type
  end

  def down
  end
end
