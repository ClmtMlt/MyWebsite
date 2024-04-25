class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :brand
      t.string :website
      t.string :product
      t.string :description
      t.string :known

      t.timestamps
    end
  end
end
