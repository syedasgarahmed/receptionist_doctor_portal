# db/migrate/YYYYMMDDHHMMSS_create_patients.rb
class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :address
      t.string :phone_number
      t.datetime :registered_at
      t.references :receptionist, foreign_key: { to_table: :users }
      t.references :doctor, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
