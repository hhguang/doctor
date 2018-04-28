class AddBirthDateToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :birth_date, :date
  end
end
