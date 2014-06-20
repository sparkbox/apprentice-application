class ChangeWillingtoMoveColumnDefault < ActiveRecord::Migration
  def change
    change_column_default(:apprentice_forms, :willing_to_move, nil)
  end
end
