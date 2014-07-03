class ChangeDatetoString < ActiveRecord::Migration
  def change
    change_column :apprentice_forms, :start_date, :string
    change_column :apprentice_forms, :end_date, :string
  end
end
