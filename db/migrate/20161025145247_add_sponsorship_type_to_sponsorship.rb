class AddSponsorshipTypeToSponsorship < ActiveRecord::Migration[5.0]
  def change
    add_column :sponsorships, :sponsorship_type, :integer
  end
end
