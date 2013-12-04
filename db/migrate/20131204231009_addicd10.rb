class Addicd10 < ActiveRecord::Migration
  def change
    create_table :icd10s do |t|
      t.string :code
      t.string :description
      t.timestamps
    end
  end
end
