class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :neighborhood
      t.text :street
      t.integer :nationality_id
      t.integer :idiom_id
      t.string :name

      t.timestamps
    end
  end
end
