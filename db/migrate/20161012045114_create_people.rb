class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :bank_acct
      t.text :address

      t.timestamps
    end
  end
end
