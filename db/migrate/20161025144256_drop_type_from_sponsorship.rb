class DropTypeFromSponsorship < ActiveRecord::Migration[5.0]
 def up
    remove_column :sponsorships, :type
  end

  def down
    add_column :sponsorships, :type, :string
  end
end
