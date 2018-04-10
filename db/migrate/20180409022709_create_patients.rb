class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :phone
      t.string :sex
      t.string :age
      t.string :birthyear
      t.text :case_history

      t.timestamps
    end
  end
end
