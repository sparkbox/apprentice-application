class AddDemographicInfo < ActiveRecord::Migration
  def change
    add_column :apprentice_forms, :phone_number, :string
    add_column :apprentice_forms, :address, :string
    add_column :apprentice_forms, :url, :string
    add_column :apprentice_forms, :social_url, :string
  end
end
