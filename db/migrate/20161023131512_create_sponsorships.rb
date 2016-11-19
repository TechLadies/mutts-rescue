class CreateSponsorships < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsorships do |t|
      t.integer :person_id
      t.date :sponsor_until_date
      t.decimal :amount, precision: 8, scale: 2
      t.string :type
      t.integer :dog_id
      t.text :notes

      t.timestamps
    end
  end
end
