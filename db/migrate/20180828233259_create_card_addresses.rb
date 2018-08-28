class CreateCardAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :card_addresses do |t|
      t.integer :card_id
      t.integer :address_id

      t.timestamps
    end
  end
end
