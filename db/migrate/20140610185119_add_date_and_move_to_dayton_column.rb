class AddDateAndMoveToDaytonColumn < ActiveRecord::Migration
  def change
    add_column :apprentice_forms, :start_date, :date
    add_column :apprentice_forms, :end_date, :date
    add_column :apprentice_forms, :willing_to_move, :boolean
  end
end
