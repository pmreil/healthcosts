class UpdateMcc < ActiveRecord::Migration
  def up
		execute 'update drgs set description = replace(description, "W/O MCC", "without major complications")'
		execute 'update drgs set description = replace(description, "W/O CC/MCC", "without any complications")'
		execute 'update drgs set description = replace(description, "W/O CC", "without complications")'
		execute 'update drgs set description = replace(description, "W MCC", "with major complications")'
		execute 'update drgs set description = replace(description, "W CC", "with complications")'
  end

  def down
  end
end
