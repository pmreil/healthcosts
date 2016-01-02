class ProvidersIndex < ActiveRecord::Migration
  def up
add_index :providers, :npi
  end

  def down
  end
end
