class AddIsGoodForElderlyOwnersToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :is_good_for_elderly_owners, :boolean
  end
end
