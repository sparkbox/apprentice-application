class CreateApprenticeapplications < ActiveRecord::Migration
  def change
    create_table :apprenticeapplications do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
