class AddAboutColumn < ActiveRecord::Migration
  def change
    add_column :apprentice_forms, :about_me, :string
  end
end
