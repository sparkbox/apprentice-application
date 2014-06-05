class CreateApprenticeApplications < ActiveRecord::Migration
  def change
    create_table :apprentice_applications do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
