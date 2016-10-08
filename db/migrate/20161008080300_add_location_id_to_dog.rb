class AddLocationIdToDog < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :location_id, :integer
  end
end
