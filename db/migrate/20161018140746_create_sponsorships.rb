class CreateSponsorships < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsorships do |t|
      t.integer :people_id
      t.integer :dog_id
      t.date :date_start
      t.date :date_end
      t.string :frequency

      t.timestamps
    end
  end
end
