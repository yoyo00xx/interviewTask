class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :number

      t.timestamps
    end
  end
end
