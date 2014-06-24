class AddTokenizeColumn < ActiveRecord::Migration
  def change
    add_column :apprentice_forms, :token, :string
  end
end
