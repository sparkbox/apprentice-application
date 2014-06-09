class RemoveApprenticeApplicationsTable < ActiveRecord::Migration
  def change
    drop_table :apprenticeapplications
  end
end
