class AddIsFeaturedColumnToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :is_featured, :boolean
  end
end
