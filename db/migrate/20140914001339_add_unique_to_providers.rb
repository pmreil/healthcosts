class AddUniqueToProviders < ActiveRecord::Migration
  def change
	add_index :providers, :npi, :unique => true
  end
end
