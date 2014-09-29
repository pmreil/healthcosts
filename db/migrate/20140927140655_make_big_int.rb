class MakeBigInt < ActiveRecord::Migration
  def up

change_column :organizations, :pacid, :bigint  
change_column :addresses, :pacid, :bigint  

  end

  def down
  end
end
