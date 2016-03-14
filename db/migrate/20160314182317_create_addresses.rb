class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country

      t.timestamps null: false
    end
  end
end
