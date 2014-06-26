class RemoveApprenticeApplications < ActiveRecord::Migration
  def change
    drop_table :apprenticeapplications
  end
end
