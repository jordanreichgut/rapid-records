class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.date :date
      t.string :doctor_name
      t.integer :patient_id
      t.integer :record_id
      t.string :medications
      t.string :treatment
      t.string :reason_for_visit
      t.string :notes

      t.timestamps
    end
  end
end
