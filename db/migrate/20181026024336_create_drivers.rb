class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :address
      t.text :observations
      t.boolean :status

      t.timestamps
    end
  end
end
