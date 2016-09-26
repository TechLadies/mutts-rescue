class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.date :born_on
      t.string :chip_number
      t.string :license_number
      t.boolean :is_hdb_approved
      t.string :color_markings
      t.string :adoption_status
      t.text :background_story
      t.boolean :is_good_with_other_dogs
      t.boolean :is_good_with_kids
      t.string :energy_level
      t.text :notes_temperament
      t.boolean :is_vaccinated
      t.boolean :is_sterilized
      t.text :notes_health
      t.text :quote

      t.timestamps
    end
  end
end
