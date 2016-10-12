class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.integer :dog_id
      t.date :date
      t.string :image_url
      t.text :text

      t.timestamps
    end
  end
end
