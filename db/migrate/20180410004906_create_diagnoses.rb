class CreateDiagnoses < ActiveRecord::Migration[5.1]
  def change
    create_table :diagnoses do |t|
      t.references :patient, foreign_key: true
      t.integer :heart_rate
      t.decimal :bp, precision: 5, scale: 2
      t.decimal :bs, precision: 5, scale: 2
      t.text :prescription
      t.datetime :record_date

      t.timestamps
    end
  end
end
