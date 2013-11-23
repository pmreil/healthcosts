class AddProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :npi
      t.string :pacid
      t.string :professional_enrollment_id
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :suffix
      t.string :gender
      t.string :credential
      t.string :medical_school_name
      t.integer :graduation_year
      t.boolean :professional_accepts_medicare_assignment
      t.boolean :participating_in_erx
      t.boolean :participating_in_pqrs
      t.boolean :participating_in_ehr
      t.timestamps
    end
  end
end
