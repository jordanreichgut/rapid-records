class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :eye_color
      t.string :race
      t.integer :height
      t.integer :weight
      t.string :picture_url
      t.boolean :sex
      t.string :blood_type

      t.timestamps
    end
  end
end
