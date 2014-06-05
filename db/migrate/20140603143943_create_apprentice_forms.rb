class CreateApprenticeForms < ActiveRecord::Migration
  def change
    create_table :apprentice_forms do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
