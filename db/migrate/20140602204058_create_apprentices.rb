class CreateApprentices < ActiveRecord::Migration
  def change
    create_table :apprentices do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
