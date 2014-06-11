class RenameNameColumnToFirstName < ActiveRecord::Migration
  def change
    rename_column :apprentice_forms, :name, :first_name
  end
end