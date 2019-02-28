class CreateSuggestedAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :suggested_addresses do |t|
      t.string :neighborhood
      t.text :street
      t.string :name
      t.text :comments

      t.timestamps
    end
  end
end
