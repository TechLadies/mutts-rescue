class AddImageUrlToDog < ActiveRecord::Migration[5.0]
  def change
  	add_column :dogs, :image_url, :string
  end
end
