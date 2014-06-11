class AddLastNameColumn < ActiveRecord::Migration
  def change
    add_column :apprentice_forms, :last_name, :string
  end
end