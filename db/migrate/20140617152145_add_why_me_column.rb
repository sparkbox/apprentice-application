class AddWhyMeColumn < ActiveRecord::Migration
  def change
    add_column :apprentice_forms, :why_me, :string
  end
end
