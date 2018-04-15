class ChangeColumnInDiagonses < ActiveRecord::Migration[5.1]
  def change
    change_column :diagnoses, :bp, :string
  end
end
