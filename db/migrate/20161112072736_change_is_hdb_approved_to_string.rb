class ChangeIsHdbApprovedToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :dogs, :is_hdb_approved, :string, default: "maybe"
   end
end
